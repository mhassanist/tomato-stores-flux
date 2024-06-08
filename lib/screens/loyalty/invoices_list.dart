import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../generated/l10n.dart';
import 'invoice_details.dart';

class InvoicesListScreen extends StatefulWidget {
  final String userPhone;

  const InvoicesListScreen(this.userPhone);

  @override
  State<InvoicesListScreen> createState() => _InvoicesListScreenState();
}

class _InvoicesListScreenState extends State<InvoicesListScreen> {
  late DateTime selectedFromDate;
  late DateTime selectedToDate;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    selectedFromDate = DateTime(now.year, now.month, 1);
    selectedToDate = DateTime(now.year, now.month + 1, 0);
  }

  Future<void> _selectFromDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedFromDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedFromDate) {
      setState(() {
        selectedFromDate = picked;
      });
    }
  }

  Future<void> _selectToDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedToDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedToDate) {
      setState(() {
        selectedToDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          S.of(context).invoices,
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("From Date"),
                          ElevatedButton(
                            onPressed: () => _selectFromDate(context),
                            child: Text(
                              DateFormat('yyyy-MM-dd', 'en_US')
                                  .format(selectedFromDate),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("To Date"),
                          ElevatedButton(
                            onPressed: () => _selectToDate(context),
                            child: Text(
                              DateFormat('yyyy-MM-dd', 'en_US')
                                  .format(selectedToDate),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('View'),
                ),
              ),
              Expanded(
                child: InvoiceList(
                  phoneNumber: widget.userPhone,
                  fromDate: selectedFromDate,
                  toDate: selectedToDate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InvoiceList extends StatelessWidget {
  final String phoneNumber;
  final DateTime fromDate;
  final DateTime toDate;

  const InvoiceList({
    required this.phoneNumber,
    required this.fromDate,
    required this.toDate,
  });

  Stream<QuerySnapshot> getInvoices() {
    return FirebaseFirestore.instance
        .collection('TomatoInvoices')
        .where('INVCustomerID', isEqualTo: '01097777167')
        // .where('INVDATE',
        //     isGreaterThanOrEqualTo:
        //         DateFormat('MM/dd/yyyy', 'en_US').format(fromDate))
        // .where('INVDATE',
        //     isLessThanOrEqualTo:
        //         DateFormat('MM/dd/yyyy', 'en_US').format(toDate))
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: getInvoices(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(child: Text('No invoices found.'));
        }

        var invoices = snapshot.data!.docs;

        return ListView(
          children: [
            ...invoices.map((doc) {
              Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          InvoiceDetailsScreen(invoiceId: doc.id),
                    ),
                  );
                },
                child: Card(
                  elevation: 4.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['INVStoreName'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                data['INVDATE'],
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
                                data['INVUID'].toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                data['INVTotal'].toString(),
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
                ),
              );
            }).toList(),
          ],
        );
      },
    );
  }
}
