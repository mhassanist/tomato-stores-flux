import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../generated/l10n.dart';
import 'error_manaer.dart';
import 'loyalty_api.dart';
import 'styles.dart';

class AddVoucherScreen extends StatefulWidget {
  final userPhone;

  const AddVoucherScreen(this.userPhone);

  @override
  State<AddVoucherScreen> createState() => _AddVoucherScreenState();
}

enum ScreenState { initial, loading, success, failure }

class _AddVoucherScreenState extends State<AddVoucherScreen> {
  ScreenState state = ScreenState.initial;
  final _pointsController = TextEditingController();
  String errorMessage = '';

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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: buildBody(widget.userPhone),
          ),
        ));
  }

  Widget buildBody(userPhone) {
    switch (state) {
      case ScreenState.success:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            Navigator.of(context).pop();
          }
        });
        return Center(child: Text(S.of(context).succeededClosing));
      case ScreenState.initial:
        return buildVoucherUI();
      case ScreenState.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );

      case ScreenState.failure:
        return buildVoucherUI();
    }
  }

  Widget buildVoucherUI() {
    return ListView(
      children: [
        TextField(
          controller: _pointsController,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: S.of(context).pointCount,
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          errorMessage,
          style: redErrorTextStyle,
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              if (_pointsController.text.isEmpty) {
                setState(() {
                  errorMessage = '';
                  state = ScreenState.failure;
                });
                return;
              }
              if (int.parse(_pointsController.text) < 100) {
                setState(() {
                  errorMessage = S.of(context).pointsMustBeMoreThan10;
                  state = ScreenState.failure;
                });
                return;
              }
              setState(() {
                state = ScreenState.loading;
              });
              await LoyaltyWebService.instance.createVoucher(
                  int.parse(_pointsController.text), widget.userPhone);

              setState(() {
                errorMessage = '';
                state = ScreenState.success;
              });
            } on Exception catch (ex) {
              setState(() {
                state = ScreenState.failure;
                errorMessage =
                    ErrorManager.mapExceptionToErrorMessage(context, ex);
              });
            }
          },
          child: Text(
            S.of(context).createVoucher,
          ),
        ),
      ],
    );
  }
}
