import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InvoiceDetailsScreen extends StatelessWidget {
  final String invoiceId;

  const InvoiceDetailsScreen({required this.invoiceId});

  Stream<QuerySnapshot> getInvoiceItems() {
    return FirebaseFirestore.instance
        .collection('TomatoInvoices')
        .doc(invoiceId)
        .collection('InvItems')
        .snapshots();
  }

  Future<DocumentSnapshot> getInvoiceDetails() {
    return FirebaseFirestore.instance
        .collection('TomatoInvoices')
        .doc(invoiceId)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          'Invoice Details',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        leading: ModalRoute.of(context)?.canPop ?? false
            ? Center(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back_ios),
                ),
              )
            : null,
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: getInvoiceDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('Invoice not found.'));
          }

          var invoiceData = snapshot.data!.data() as Map<String, dynamic>;

          return Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${invoiceData['INVStoreName']}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              '${invoiceData['INVDATE']}',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${invoiceData['INVUID']}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              '${invoiceData['INVTotal']}'.toString(),
                              style: TextStyle(
                                color: Colors.green[700],
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: StreamBuilder<QuerySnapshot>(
                    stream: getInvoiceItems(),
                    builder: (context, itemSnapshot) {
                      if (itemSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      }

                      if (itemSnapshot.hasError) {
                        return Center(
                            child: Text('Error: ${itemSnapshot.error}'));
                      }

                      if (!itemSnapshot.hasData ||
                          itemSnapshot.data!.docs.isEmpty) {
                        return Center(child: Text('No items found.'));
                      }

                      var items = itemSnapshot.data!.docs;

                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.all(16.0),
                          child: Table(
                            border: TableBorder.all(color: Colors.black),
                            columnWidths: {
                              0: FixedColumnWidth(100.0), // Code
                              1: FixedColumnWidth(200.0), // Name
                              2: FixedColumnWidth(100.0), // Color
                              3: FixedColumnWidth(50.0), // Size
                              4: FixedColumnWidth(50.0), // Qty
                            },
                            children: [
                              TableRow(
                                decoration:
                                    BoxDecoration(color: Colors.grey[200]),
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Code',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Item Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Color',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Size',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Qty',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              ...items.map((doc) {
                                Map<String, dynamic> data =
                                    doc.data() as Map<String, dynamic>;
                                return TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(data['ItemCode']),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(data['ItemName']),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(data['ItemColor']),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(data['ItemSize']),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text((data['ItemQty'] as double)
                                          .toStringAsFixed(0)),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
