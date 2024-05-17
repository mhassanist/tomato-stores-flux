import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddVoucherScreen extends StatefulWidget {
  @override
  _AddVoucherScreenState createState() => _AddVoucherScreenState();
}

class _AddVoucherScreenState extends State<AddVoucherScreen> {
  final TextEditingController _pointsController = TextEditingController();
  final CollectionReference _vouchersCollection =
      FirebaseFirestore.instance.collection('Vouchers');

  void _addVoucher() {
    int points = int.parse(_pointsController.text);
    _vouchersCollection.add({
      'CustomerID': '01127570080',
      'ExpirationDate':
          DateTime.now().add(Duration(days: 30)).toIso8601String(),
      'Points': points,
      'RedeemedAt': '',
      'RedeemedOn': '',
    }).then((_) {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Voucher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _pointsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Points',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addVoucher,
              child: Text('Add Voucher'),
            ),
          ],
        ),
      ),
    );
  }
}
