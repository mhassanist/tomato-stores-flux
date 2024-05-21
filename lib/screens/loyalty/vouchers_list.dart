import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:fstore/screens/loyalty/voucher_card_screen.dart';
import 'package:intl/intl.dart';

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
                .orderBy('CreatedAt', descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
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
          child: CouponCard(
            height: 120,
            backgroundColor: const Color.fromARGB(220, 155, 34, 39),
            curveAxis: Axis.vertical,
            firstChild: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 155, 34, 39),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        voucher['Value'].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Divider(color: Colors.white54, height: 0),
                  Text(
                    'LE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            secondChild: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    voucher.id.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    'Valid Till - ${DateFormat('dd-MM-yyyy').format(DateTime.parse(voucher['ExpirationDate'])).toString()}',
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
