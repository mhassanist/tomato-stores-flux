import 'package:flutter/material.dart';

class WebEmbedPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.titleMedium ?? const TextStyle();
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.center,
      child: Text(
        'WebView feature on FluxBuilder Desktop is limited. Don\'t worry, it will display normally after you have built the app.',
        style: textStyle.copyWith(
          color: textStyle.color?.withOpacity(0.5),
        ),
      ),
    );
  }
}
