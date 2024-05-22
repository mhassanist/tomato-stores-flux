import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:fstore/screens/loyalty/voucher_card_screen.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import 'add_voucher.dart';
import 'loyalty_appbar.dart';

class VoucherListScreen extends StatelessWidget {
  final CollectionReference _vouchersCollection =
      FirebaseFirestore.instance.collection('Vouchers');

  final userPhone;
  VoucherListScreen(this.userPhone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TomatoPointAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: _vouchersCollection
                .where('CustomerID', isEqualTo: '01127570080')
                .where('RedeemedAt', isNull: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              var vouchers = snapshot.data!.docs;
              return ListView.builder(
                itemCount: vouchers.length,
                itemBuilder: (context, index) {
                  var voucher = vouchers[index];
                  return buildVoucherListItem(context, voucher);
                },
              );
            },
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 155, 34, 39),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddVoucherScreen(userPhone)),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildVoucherListItem(context, voucher) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => VoucherDetailScreen(voucher)));
        },
        child: Hero(
          tag: 'hero-voucher-${voucher.id}', // Unique tag for the Hero widget
          flightShuttleBuilder: (
            BuildContext flightContext,
            Animation<double> animation,
            HeroFlightDirection flightDirection,
            BuildContext fromHeroContext,
            BuildContext toHeroContext,
          ) {
            return SizedBox(
              width: 100, // adjust size as needed
              height: 100, // adjust size as needed
              child: Image.asset('assets/images/voucher_bg.png'),
            );
          },
          child: CouponCard(
            height: 140,
            backgroundColor: Color.fromARGB(255, 185, 29, 42),
            curveAxis: Axis.vertical,
            curveRadius: 25,
            clockwise: false,
            firstChild: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 185, 29, 42),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: SfBarcodeGenerator(
                      value: '1354654',
                      symbology: Codabar(),
                      showValue: false,
                      barColor: Colors.white,
                    ),
                  ),
                  Text(
                    voucher.id.toString().toUpperCase().substring(0, 8),
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            secondChild: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${voucher['Value'].toInt()} L.E',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 0.9),
                  ),
                  Divider(color: Colors.white, height: 12),
                  Text(
                    'VALID TILL:  ${DateFormat('dd-MM-yyyy').format(DateTime.parse(voucher['ExpirationDate'])).toString()}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
