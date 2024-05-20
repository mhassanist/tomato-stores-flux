import 'package:flutter/material.dart';

import 'loyalty_api.dart';

class AddVoucherScreen extends StatelessWidget {
  final TextEditingController _pointsController = TextEditingController();

  final userPhone;

  AddVoucherScreen(this.userPhone);

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
              decoration: const InputDecoration(
                labelText: 'Points',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await LoyaltyWebService.instance
                    .addVoucher(int.parse(_pointsController.text), userPhone);
                Navigator.pop(context);
              },
              child: Text('Add Voucher'),
            ),
          ],
        ),
      ),
    );
  }
}
