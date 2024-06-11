import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  late ScrollController _scrollController;
  List<DocumentSnapshot> invoices = [];
  bool isLoading = false;
  bool hasMore = true;
  final int documentLimit = 100;
  DocumentSnapshot? lastDocument;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    selectedFromDate = DateTime(now.year, now.month, 1);
    selectedToDate = DateTime(now.year, now.month + 1, 0);
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchInvoices();
      }
    });
    fetchInvoices(); // Initial fetch with the preset date range
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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

  void resetInvoices() {
    setState(() {
      invoices = [];
      lastDocument = null;
      hasMore = true;
      fetchInvoices();
    });
  }

  Future<void> fetchInvoices() async {
    if (isLoading || !hasMore) return;

    setState(() {
      isLoading = true;
    });

    Query query = FirebaseFirestore.instance
        .collection('TomatoInvoices')
        .where('INVCustomerID', isEqualTo: widget.userPhone)
        .where('INVDATE',
            isGreaterThanOrEqualTo: Timestamp.fromDate(selectedFromDate))
        .where('INVDATE',
            isLessThanOrEqualTo: Timestamp.fromDate(selectedToDate))
        .orderBy('INVDATE')
        .limit(documentLimit);

    if (lastDocument != null) {
      query = query.startAfterDocument(lastDocument!);
    }

    QuerySnapshot querySnapshot = await query.get();
    if (querySnapshot.docs.isEmpty) {
      setState(() {
        hasMore = false;
      });
    } else {
      lastDocument = querySnapshot.docs.last;
      setState(() {
        invoices.addAll(querySnapshot.docs);
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Invoices'),
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
                  onPressed: () {
                    resetInvoices();
                  },
                  child: const Text('View'),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: invoices.length + 1,
                  itemBuilder: (context, index) {
                    if (index == invoices.length) {
                      return isLoading
                          ? Center(child: CircularProgressIndicator())
                          : hasMore
                              ? Container() // Placeholder to trigger loading more items
                              : Center(child: Text('No more invoices'));
                    }

                    var data = invoices[index].data() as Map<String, dynamic>;

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InvoiceDetailsScreen(
                                invoiceId: invoices[index].id),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 4.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
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
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      timestampToDateString(data['INVDATE']),
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
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String timestampToDateString(Timestamp timestamp) {
    DateTime date = timestamp.toDate();
    return DateFormat('yyyy-MM-dd', 'en_US').format(date);
  }
}
