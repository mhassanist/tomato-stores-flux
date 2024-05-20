import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'add_vocucher.dart';

class VoucherListScreen extends StatelessWidget {
  final CollectionReference _vouchersCollection =
      FirebaseFirestore.instance.collection('Vouchers');

  final userPhone;
  VoucherListScreen(this.userPhone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          const Text(
            "Vouchers",
            style: TextStyle(
                color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
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
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CouponCard(
                        height: 120,
                        backgroundColor: Color.fromARGB(220, 155, 34, 39),
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
                    );
                    // return Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: Card(
                    //     elevation: 10,
                    //     child: Container(
                    //       height: 100,
                    //       child: const Padding(
                    //         padding: EdgeInsets.all(8.0),
                    //         child: Row(
                    //           children: [
                    //             Text('500 EGP'),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             VerticalDivider(),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             Column(
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               children: [
                    //                 Text('Issued On : 10 / 06 / 2024'),
                    //                 Text('Valid till : 13 / 06 / 2024')
                    //               ],
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // );   // return Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: Card(
                    //     elevation: 10,
                    //     child: Container(
                    //       height: 100,
                    //       child: const Padding(
                    //         padding: EdgeInsets.all(8.0),
                    //         child: Row(
                    //           children: [
                    //             Text('500 EGP'),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             VerticalDivider(),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             Column(
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               children: [
                    //                 Text('Issued On : 10 / 06 / 2024'),
                    //                 Text('Valid till : 13 / 06 / 2024')
                    //               ],
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // );
                    // return ClipRRect(
                    //   borderRadius: BorderRadius.circular(8.0),
                    //   child: Image.asset(
                    //     'assets/images/coupon_bg.png',
                    //     fit: BoxFit.fitWidth,
                    //   ),
                    // );

                    // return ListTile(
                    //   title: Text('Points: ${voucher['Points']}'),
                    //   subtitle: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text('CustomerID: ${voucher['CustomerID']}'),
                    //       Text('ExpirationDate: ${voucher['ExpirationDate']}'),
                    //       Text('RedeemedAt: ${voucher['RedeemedAt']}'),
                    //       Text('RedeemedOn: ${voucher['RedeemedOn']}'),
                    //     ],
                    //   ),
                    // );
                  },
                );
              },
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 155, 34, 39),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddVoucherScreen(userPhone)),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
