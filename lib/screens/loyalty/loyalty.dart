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
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/images/tomato_points_logo.jpg'),
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
      loyaltyProvider.fetchUserPhone(UserBox().userInfo!.email!);
      return const Center(child: CircularProgressIndicator());
    } else if (loyaltyProvider.fetchState == LoyaltyPageStates.loading) {
      return const Center(child: CircularProgressIndicator());
    } else if (loyaltyProvider.fetchState == LoyaltyPageStates.fetched) {
      return _phoneWidget(context, loyaltyProvider.userPhone);
    } else {
      return _errorState(context);
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

  Widget _errorState(BuildContext context) {
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
          onPressed: () {
            // Handle action for adding shipping address
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddAddressPage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Add Phone Number'),
          ),
        ),
      ],
    );
  }

  Widget _phoneWidget(BuildContext context, String phoneNumber) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: SfBarcodeGenerator(
            value: '*$phoneNumber*',
            symbology: Code128A(),
            showValue: false,
          ),
        ),
        SizedBox(
          height: 150,
          child: Text(phoneNumber),
        ),
      ],
    );
  }
}
