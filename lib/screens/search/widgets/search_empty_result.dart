import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/common/flux_image.dart';

class EmptySearch extends StatelessWidget {
  final String? title;
  final String? image;
  final double width;
  final double height;
  final EdgeInsets paddingImage;
  final TextStyle? textStyle;
  const EmptySearch({
    Key? key,
    this.title,
    this.image,
    this.width = 120.0,
    this.height = 120.0,
    this.paddingImage = const EdgeInsets.only(bottom: 30),
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: paddingImage,
          child: FluxImage(
            imageUrl: image ?? kNoResult,
            width: width,
            height: height,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          title ?? S.of(context).notFindResult,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
