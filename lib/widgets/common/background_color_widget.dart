import 'package:flutter/material.dart';

const _defaultShowBackground = false;

class BackgroundColorWidget extends StatelessWidget {
  const BackgroundColorWidget({
    super.key,
    this.width,
    this.height,
    this.color,
    this.enable,
    required this.child,
    this.padding,
    this.margin,
    this.decoration,
    this.constraints,
  }) : assert(
          color == null || decoration == null,
          'Cannot provide both a color and a decoration\n'
          'To provide both, use "decoration: BoxDecoration(color: color)".',
        );

  final double? width;
  final double? height;
  final Color? color;
  final bool? enable;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? decoration;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    final colorFromDecorationBox = decoration?.color;
    final colorBG = (enable ?? _defaultShowBackground)
        ? (colorFromDecorationBox ??
            color ??
            Theme.of(context).colorScheme.background)
        : null;

    return Container(
      padding: padding,
      constraints: constraints,
      margin: margin,
      decoration:
          (decoration ?? const BoxDecoration()).copyWith(color: colorBG),
      width: width,
      height: height,
      child: child,
    );
  }
}
