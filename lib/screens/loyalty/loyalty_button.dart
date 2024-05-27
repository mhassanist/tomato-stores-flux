// lib/widgets/voucher_button.dart

import 'package:flutter/material.dart';
import 'package:fstore/screens/loyalty/rounded_button.dart';

class VoucherButton extends StatelessWidget {
  final String iconPath;
  String text;
  final VoidCallback onPressed;
  final enabled;

  VoucherButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
    required this.text,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 80.0,
          ),
          const SizedBox(height: 10.0),
          RoundedButton(
            enabled: enabled,
            text: text,
            wide: true,
          ),
        ],
      ),
    );
  }
}
