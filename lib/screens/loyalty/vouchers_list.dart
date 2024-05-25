import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../../generated/l10n.dart';
import 'add_voucher.dart';
import 'voucher_card_screen.dart';

class VoucherListScreen extends StatelessWidget {
  final CollectionReference _vouchersCollection =
      FirebaseFirestore.instance.collection('Vouchers');

  final userPhone;
  VoucherListScreen(this.userPhone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous screen by popping the current route
            Navigator.of(context).pop();
          },
        ),
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            'assets/images/tomato_points_logo.jpg',
            height: 50,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: _vouchersCollection
                .where('CustomerID', isEqualTo: userPhone)
                .where('RedeemedAt', isNull: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }
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
        backgroundColor: const Color.fromARGB(255, 24, 24, 24),
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
            backgroundColor: const Color.fromARGB(255, 185, 29, 42),
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
                      value: voucher.id.toString().substring(0, 6),
                      symbology: Codabar(),
                      showValue: false,
                      barColor: Colors.white,
                    ),
                  ),
                  Text(
                    voucher.id.toString().toUpperCase().substring(0, 8),
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            secondChild: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${voucher['Value'].toInt()} L.E',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 0.9),
                  ),
                  const Divider(color: Colors.white, height: 12),
                  Text(
                    '${S.of(context).validTill}  ${DateFormat('dd-MM-yyyy').format(DateTime.parse(voucher['ExpirationDate'])).toString()}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
