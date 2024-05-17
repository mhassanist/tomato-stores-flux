import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_vocucher.dart';

class VoucherListScreen extends StatelessWidget {
  final CollectionReference _vouchersCollection =
      FirebaseFirestore.instance.collection('Vouchers');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vouchers'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _vouchersCollection.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          var vouchers = snapshot.data!.docs;
          return ListView.builder(
            itemCount: vouchers.length,
            itemBuilder: (context, index) {
              var voucher = vouchers[index];
              return ListTile(
                title: Text('Points: ${voucher['Points']}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CustomerID: ${voucher['CustomerID']}'),
                    Text('ExpirationDate: ${voucher['ExpirationDate']}'),
                    Text('RedeemedAt: ${voucher['RedeemedAt']}'),
                    Text('RedeemedOn: ${voucher['RedeemedOn']}'),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddVoucherScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
