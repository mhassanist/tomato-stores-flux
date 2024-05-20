// lib/widgets/voucher_button.dart

import 'package:flutter/material.dart';

class VoucherButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onPressed;
  final enabled;

  const VoucherButton({
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
          const SizedBox(width: 8.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: enabled
                  ? const Color.fromARGB(255, 155, 34, 39)
                  : Colors.grey,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
