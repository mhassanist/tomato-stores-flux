import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class VoucherDetailScreen extends StatelessWidget {
  var voucher;

  VoucherDetailScreen(this.voucher);

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
      backgroundColor: Colors.white54,
      body: Center(
        child: Hero(
          tag: 'hero-voucher-${voucher.id}',
          child: RoundedImageBackground(voucher),
        ),
      ),
    );
  }
}

class RoundedImageBackground extends StatelessWidget {
  var voucher;

  RoundedImageBackground(this.voucher);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Fills the screen width
      height: 250, // Specify your desired height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), // Rounded corners
        image: const DecorationImage(
          image: AssetImage(
              'assets/images/voucher_bg.png'), // Path to your asset image
          fit: BoxFit.cover, // Covers the container bounds
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          // onDoubleTap: () {
          //   FirebaseFirestore.instance
          //       .collection('Vouchers')
          //       .doc(voucher.id)
          //       .update({'RedeemedAt': DateTime.now()});
          // },
          child: Stack(
            children: <Widget>[
              // Rotated image on the left
              Align(
                alignment: Alignment.centerLeft,
                child: RotatedBox(
                  quarterTurns: 1, // Rotates the child 90 degrees clockwise
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/tomato_logo_white.png',
                          width: 150),
                    ), // Image from assets
                  ),
                ),
              ),
              // Three lines of text on the right
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Text('VOUCHER',
                            style:
                                TextStyle(color: Colors.white, fontSize: 28)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 0, 20, 0),
                        child: Row(
                          children: List.generate(
                              150 ~/ 4,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.white,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text('${voucher['Value'].toInt()} L.E',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: SizedBox(
                          height: 50,
                          child: SfBarcodeGenerator(
                            value: '*${voucher.id}*',
                            symbology: Code128A(),
                            showValue: false,
                            barColor: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        voucher.id,
                        style: const TextStyle(
                            letterSpacing: 4, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 9, dashSpace = 5, startX = 0;
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
