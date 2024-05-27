import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.enabled,
    required this.text,
    required this.wide,
  });

  final bool enabled;
  final String text;
  final bool wide;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: !wide
          ? EdgeInsets.all(5)
          : const EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: enabled ? const Color.fromARGB(255, 206, 40, 38) : Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
