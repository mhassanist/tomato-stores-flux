import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flux_firebase/index.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../../common/tools/navigate_tools.dart';
import '../../data/boxes.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart';
import 'add_address.dart';
import 'loyalty_appbar.dart';
import 'loyalty_button.dart';
import 'loyalty_provider.dart';
import 'store_points_widget.dart';
import 'vouchers_list.dart';

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
              //Listview to enable auto scrolling in small screens
              ListView(children: [_buildBody(context, user, loyaltyProvider)]),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, UserModel user,
      LoyaltyModelNotifier loyaltyProvider) {
    if (user.loggedIn) {
      return buildLoyaltyStatesUI(context, loyaltyProvider);
    } else {
      loyaltyProvider.fetchState = LoyaltyPageStates.initial;
      return buildLoginRequestUI(context);
    }
  }

  Widget buildLoyaltyStatesUI(BuildContext context, loyaltyProvider) {
    if (loyaltyProvider.fetchState == LoyaltyPageStates.initial) {
      //get user points
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
      return buildLoyaltyPointsUI(context, loyaltyProvider);
    } else {
      return buildAddressNotFoundUI(context, loyaltyProvider);
    }
  }

  Widget buildLoginRequestUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
        onPressed: () {
          NavigateTools.navigateToLogin(
            context,
            replacement: false,
          );
        },
        child: Text(S.of(context).login),
      ),
    );
  }

  Widget buildAddressNotFoundUI(
      BuildContext context, LoyaltyModelNotifier loyaltyProvider) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).LoyaltyNoPhoneException,
          style: const TextStyle(
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
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(S.of(context).addPhoneNumber),
          ),
        ),
      ],
    );
  }

  Widget buildLoyaltyPointsUI(
      BuildContext context, LoyaltyModelNotifier loyaltyModel) {
    return Column(
      children: [
        VoucherButton(
          enabled: true,
          text: 'Create bills',
          onPressed: () async {
            var sum = 0;
            var rng = Random();
            var list = [];
            for (var i = 0; i < 18; i++) {
              var n = rng.nextInt(34587);
              list.add(n);
              sum += n;
            }
            print(sum);
            for (var i = 0; i < list.length; i++) {
              var invNet = list[i];
              FirebaseFirestore.instance.collection("TomatoInvoices").add(
                  {'INVCustomerID': loyaltyModel.userPhone, 'INVNet': invNet});
            }
          },
          iconPath: 'assets/images/invoices_icon.jpeg',
        ),
        Text(
          '${S.of(context).welcome}, ${UserBox().userInfo!.firstName!}',
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
                Text(
                  S.of(context).storePoints,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const Text(' - '),
                UserStorePoints(documentId: loyaltyModel.userPhone!),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        VoucherButton(
          text: S.of(context).vouchers,
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
          text: S.of(context).invoices,
          onPressed: () {},
          iconPath: 'assets/images/invoices_icon.jpeg',
        ),
      ],
    );
  }
}
