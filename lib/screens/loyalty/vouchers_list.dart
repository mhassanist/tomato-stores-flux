import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../../generated/l10n.dart';
import 'add_voucher.dart';
import 'loyalty_colors.dart' as colors;
import 'voucher_card_screen.dart';

class VoucherListScreen extends StatefulWidget {
  final userPhone;

  const VoucherListScreen(this.userPhone);

  @override
  State<VoucherListScreen> createState() => _VoucherListScreenState();
}

enum ActiveTab { active, expired, redeemed }

class _VoucherListScreenState extends State<VoucherListScreen> {
  final CollectionReference _vouchersCollection =
      FirebaseFirestore.instance.collection('Vouchers');

  ActiveTab activeTab = ActiveTab.active;

  var selectedSnapShot;

  @override
  void initState() {
    selectedSnapShot = createActiveVouchersQuery();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            S.of(context).vouchers,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          leading: !(ModalRoute.of(context)?.canPop ?? false)
              ? null
              : Center(
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                )),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: activeTab == ActiveTab.active
                        ? MaterialStatePropertyAll<Color>(colors.brandColor)
                        : const MaterialStatePropertyAll<Color>(Colors.grey),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedSnapShot = createActiveVouchersQuery();
                      activeTab = ActiveTab.active;
                    });
                  },
                  child: Text(
                    S.of(context).active_vouchers,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: activeTab == ActiveTab.redeemed
                        ? MaterialStatePropertyAll<Color>(colors.brandColor)
                        : const MaterialStatePropertyAll<Color>(Colors.grey),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedSnapShot = createRedeemedVouchersSnapshots();
                      activeTab = ActiveTab.redeemed;
                    });
                  },
                  child: Text(
                    S.of(context).redeemed_vouchers,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: activeTab == ActiveTab.expired
                        ? MaterialStatePropertyAll<Color>(colors.brandColor)
                        : const MaterialStatePropertyAll<Color>(Colors.grey),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedSnapShot = createExpiredVouchersSnapshot();
                      activeTab = ActiveTab.expired;
                    });
                  },
                  child: Text(
                    S.of(context).expired_vouchers,
                  ),
                ),
              ],
            ),
            StreamBuilder<QuerySnapshot>(
              stream: selectedSnapShot,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  var error = snapshot.error.toString();
                  print(error);
                  return Center(child: Text(error));
                }
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                var vouchers = snapshot.data!.docs;
                return Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: vouchers.length,
                    itemBuilder: (context, index) {
                      var voucher = vouchers[index];
                      return buildVoucherListItem(context, voucher);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 24, 24, 24),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddVoucherScreen(widget.userPhone)),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Stream<QuerySnapshot<Object?>> createRedeemedVouchersSnapshots() {
    return _vouchersCollection
        .where('CustomerID', isEqualTo: widget.userPhone)
        .where('RedeemedAt', isNull: false)
        .snapshots();
  }

  Stream<QuerySnapshot<Object?>> createActiveVouchersQuery() {
    return _vouchersCollection
        .where('CustomerID', isEqualTo: widget.userPhone)
        .where('RedeemedAt', isNull: true)
        .where('ExpirationDate', isGreaterThan: DateTime.now())
        .snapshots();
  }

  Stream<QuerySnapshot<Object?>> createExpiredVouchersSnapshot() {
    return _vouchersCollection
        .where('CustomerID', isEqualTo: widget.userPhone)
        .where('ExpirationDate', isLessThan: DateTime.now())
        .where('RedeemedAt', isNull: true)
        .snapshots();
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
            backgroundColor:
                activeTab == ActiveTab.active ? colors.brandColor : Colors.grey,
            curveAxis: Axis.vertical,
            curveRadius: 25,
            clockwise: false,
            firstChild: Container(
              decoration: BoxDecoration(
                color: activeTab == ActiveTab.active
                    ? colors.brandColor
                    : Colors.grey,
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
                    '${S.of(context).validTill}  ${DateFormat('dd-MM-yyyy').format(voucher['ExpirationDate'].toDate()).toString()}',
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
