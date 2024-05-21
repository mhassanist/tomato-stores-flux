import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../../common/tools/navigate_tools.dart';
import '../../data/boxes.dart';
import '../../models/index.dart';
import 'add_address.dart';
import 'loyalty_appbar.dart';
import 'loyalty_button.dart';
import 'loyalty_logger.dart';
import 'loyalty_provider.dart';
import 'store_points_widget.dart';
import 'vouchers_list.dart';

/// [done] if not logged in, direct to login page
/// [done] if logged in, check if has address or not. If has, show phone number
/// [done] if no address direct to add address screen
///
/// [done] connect to firebase and get points of the user
/// [done] if not, generate barcode = phone number and save it LoyaltyUsers collection
/// show barcode and loyalty points : INVNet
/// firestore cloud function to update user's loyalty points after each new invoice added
///  --
/// show store bill history

class LoyaltyPage extends StatelessWidget {
  LoyaltyPage({super.key});

  final TextEditingController _pointsController =
      TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);
    var loyaltyProvider = Provider.of<LoyaltyModelNotifier>(context);

    return Scaffold(
      appBar: TomatoPointAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child:
              ListView(children: [_buildBody(context, user, loyaltyProvider)]),
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
      return const Center(
          child: Padding(
              padding: EdgeInsets.all(50), child: CircularProgressIndicator()));
    } else if (loyaltyProvider.fetchState == LoyaltyPageStates.loading) {
      return const Center(
          child: Padding(
              padding: EdgeInsets.all(50), child: CircularProgressIndicator()));
    } else if (loyaltyProvider.fetchState == LoyaltyPageStates.fetched) {
      return _loyaltyMainUI(context, loyaltyProvider);
    } else {
      return _errorState(context, loyaltyProvider);
    }
  }

  Widget _notLoggedInState(BuildContext context) {
    LoyaltyLogger().logEvent('Building not logged in UI');

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
        onPressed: () {
          NavigateTools.navigateToLogin(
            context,
            replacement: false,
          );
        },
        child: const Text('Login'),
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

  Widget _loyaltyMainUI(
      BuildContext context, LoyaltyModelNotifier loyaltyModel) {
    return Column(
      children: [
        Text(
          'Welcome, ${UserBox().userInfo!.firstName!}',
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 100,
          child: SfBarcodeGenerator(
            value: '*${loyaltyModel.userPhone}*',
            symbology: Code128A(),
            showValue: false,
          ),
        ),
        Text(loyaltyModel.userPhone!),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Store Points',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                UserStorePoints(documentId: loyaltyModel.userPhone!),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        VoucherButton(
          text: 'Vouchers',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      VoucherListScreen(loyaltyModel.userPhone)),
            );
          },
          iconPath: 'assets/images/voucher_icon.jpeg',
        ),
        const SizedBox(height: 15),
        VoucherButton(
          enabled: false,
          text: 'Invoices',
          onPressed: () {},
          iconPath: 'assets/images/invoices_icon.jpeg',
        ),
      ],
    );
  }
}
