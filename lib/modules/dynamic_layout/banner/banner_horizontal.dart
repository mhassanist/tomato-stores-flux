import 'package:flutter/material.dart';

import '../../../widgets/common/background_color_widget.dart';
import '../../../widgets/common/flux_image.dart';
import '../config/banner_config.dart';
import '../config/box_shadow_config.dart';

class BannerHorizontal extends StatelessWidget {
  final BannerConfig config;
  final Function onTap;

  const BannerHorizontal({
    required this.config,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var height = config.height != null
        ? config.height! * MediaQuery.sizeOf(context).height
        : null;
    final boxShadow = config.boxShadow ?? BoxShadowConfig.empty();
    final items = config.items;
    return BackgroundColorWidget(
      enable: config.enableBackground,
      child: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(
          start: config.marginLeft,
          end: config.marginRight,
          top: config.marginTop,
          bottom: config.marginBottom,
        ),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            items.length,
            (index) => Container(
              height: height,
              margin:
                  EdgeInsets.symmetric(horizontal: items[index].padding ?? 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(config.radius),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(boxShadow.colorOpacity),
                    blurRadius: boxShadow.blurRadius,
                    spreadRadius: boxShadow.spreadRadius,
                    offset: Offset(
                      boxShadow.x,
                      boxShadow.y,
                    ),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  items[index].radius ?? 0.0,
                ),
                child: InkWell(
                  onTap: () => onTap(items[index].jsonData),
                  child: FluxImage(
                    imageUrl: items[index].image,
                    fit: config.fit,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
