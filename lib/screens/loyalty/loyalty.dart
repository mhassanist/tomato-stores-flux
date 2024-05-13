import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../../common/tools/navigate_tools.dart';
import '../../data/boxes.dart';
import '../../models/index.dart';
import 'add_address.dart';
import 'loyalty_provider.dart';

/// [done] if not logged in, direct to login page
/// [done] if logged in, check if has address or not. If has, show phone number
/// [done] if no address direct to add address screen
///
/// connect to firebase and get points of the user
/// if not, generate barcode = phone number and save it LoyaltyUsers collection
/// show barcode and loyalty points : INVNet
/// firestore cloud function to update user's loyalty points after each new invoice added
///  --
/// show store bill history

class LoyaltyPage extends StatefulWidget {
  const LoyaltyPage({super.key});

  @override
  State<LoyaltyPage> createState() => _LoyaltyPageState();
}

class _LoyaltyPageState extends State<LoyaltyPage> {
  final TextEditingController _pointsController =
      TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);
    var loyaltyProvider = Provider.of<LoyaltyModelNotifier>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/tomato_points_logo.jpg',
                  height: 75,
                ),
              ),
            ),
            _buildBody(context, user, loyaltyProvider)
          ]),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, UserModel user,
      LoyaltyModelNotifier loyaltyProvider) {
    if (user.loggedIn) {
      return _loggedInState(context, loyaltyProvider);
    } else {
      loyaltyProvider.fetchState = LoyaltyPageStates.initial;
      return _notLoggedInState(context);
    }
  }

  Widget _loggedInState(BuildContext context, loyaltyProvider) {
    if (loyaltyProvider.fetchState == LoyaltyPageStates.initial) {
      loyaltyProvider.fetchUserPoints(
          UserBox().userInfo!.fullName, UserBox().userInfo!.email!);
      return const Center(child: CircularProgressIndicator());
    } else if (loyaltyProvider.fetchState == LoyaltyPageStates.loading) {
      return const Center(child: CircularProgressIndicator());
    } else if (loyaltyProvider.fetchState == LoyaltyPageStates.fetched) {
      return _phoneWidget(context, loyaltyProvider);
    } else {
      return _errorState(context, loyaltyProvider);
    }
  }

  Widget _notLoggedInState(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          NavigateTools.navigateToLogin(
            context,
            replacement: false,
          );
        },
        child: Text("Login"),
      ),
    );
  }

  Widget _errorState(
      BuildContext context, LoyaltyModelNotifier loyaltyProvider) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Error fetching user phone.',
          style: TextStyle(
              color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            // Handle action for adding shipping address
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddAddressPage()),
            );

            unawaited(loyaltyProvider.fetchUserPoints(
                UserBox().userInfo!.fullName, UserBox().userInfo!.email!));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Add Phone Number'),
          ),
        ),
      ],
    );
  }

  Widget _phoneWidget(BuildContext context, LoyaltyModelNotifier loyaltyModel) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  "Welcome, Mohammed",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: SfBarcodeGenerator(
              value: '*${loyaltyModel.userPhone}*',
              symbology: Code128A(),
              showValue: false,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(loyaltyModel.userPhone!),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Store Points",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(loyaltyModel.userPoints!,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: TextField(
          //     controller: _pointsController,
          //     keyboardType: TextInputType.number,
          //     decoration: InputDecoration(
          //       labelText: 'Enter a number',
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 75,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  // Add your functionality for the button press here
                  loyaltyModel.redeemUserPoints(
                      UserBox().userInfo!.fullName!,
                      UserBox().userInfo!.email!,
                      double.parse(_pointsController.text));
                  print('Button Pressed');
                },
                child: Text('Vouchers'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 75,
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () {
                    // Add your functionality for the button press here
                    loyaltyModel.redeemUserPoints(
                        UserBox().userInfo!.fullName!,
                        UserBox().userInfo!.email!,
                        double.parse(_pointsController.text));
                    print('Button Pressed');
                  },
                  child: Text('Invoices'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
