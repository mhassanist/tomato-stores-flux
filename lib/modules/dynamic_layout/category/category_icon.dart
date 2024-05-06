import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../widgets/common/background_color_widget.dart';
import '../config/category_config.dart';
import '../helper/helper.dart';
import 'category_icon_gradient_item.dart';
import 'category_icon_item.dart';

const _paddingList = 24.0;
const _maxWidth = 64.0;

class CategoryIcons extends StatelessWidget {
  final CategoryConfig config;
  final int crossAxisCount;
  final Function onShowProductList;
  final Map<String?, String?> listCategoryName;

  const CategoryIcons({
    required this.onShowProductList,
    required this.listCategoryName,
    required this.config,
    this.crossAxisCount = 5,
    Key? key,
  }) : super(key: key);

  double get separateWidth => config.separateWidth;

  @override
  Widget build(BuildContext context) {
    final listItemData = config.items;
    var numberItemOnScreen = config.columns ?? crossAxisCount;

    numberItemOnScreen = getValueForScreenType(
      context: context,
      mobile: numberItemOnScreen,
      tablet: numberItemOnScreen + 3,
      desktop: numberItemOnScreen + 8,
    );

    var row = (listItemData.length.toDouble() / numberItemOnScreen).ceil();
    final size = config.commonItemConfig.size ?? 1.0;
    final widthItem = (MediaQuery.of(context).size.width -
            _paddingList -
            (separateWidth * (numberItemOnScreen))) /
        numberItemOnScreen *
        size;
    var items = <Widget>[];

    for (var item in config.items) {
      if (config.gradientDesign) {
        items.add(
          CategoryIconGradientItem(
            onTap: (name) => onShowProductList(item..name = name),
            iconSize: widthItem > _maxWidth ? _maxWidth : widthItem,
            itemConfig: item,
            commonConfig: config.commonItemConfig,
            isHorizontal: config.horizontalItem,
            isWrap: config.wrap,
          ),
        );
      } else {
        items.add(
          CategoryIconItem(
            onTap: (name) => onShowProductList(item..name = name),
            iconSize: widthItem > _maxWidth ? _maxWidth : widthItem,
            itemConfig: item,
            commonConfig: config.commonItemConfig,
            isHorizontal: config.horizontalItem,
            isWrap: config.wrap,
          ),
        );
      }
    }

    if (config.wrap == false && items.isNotEmpty) {
      return BackgroundColorWidget(
        enable: config.enableBackground ?? false,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            left: config.marginLeft,
            right: config.marginRight,
            top: config.marginTop,
            bottom: config.marginBottom,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.expand((element) {
              return [
                element,
                ScreenTypeLayout.builder(
                  mobile: (BuildContext context) =>
                      SizedBox(width: separateWidth),
                  tablet: (BuildContext context) =>
                      SizedBox(width: separateWidth + 12),
                  desktop: (BuildContext context) =>
                      SizedBox(width: separateWidth + 24),
                ),
              ];
            }).toList()
              ..removeLast(),
          ),
        ),
      );
    }

    return BackgroundColorWidget(
      margin: EdgeInsets.only(
        left: config.marginLeft,
        right: config.marginRight,
        top: config.marginTop,
        bottom: config.marginBottom,
      ),
      enable: config.enableBackground ?? true,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          if (config.shadow != null)
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: Helper.formatDouble(config.shadow ?? 15.0)!,
              offset: Offset(0, Helper.formatDouble(config.shadow ?? 10.0)!),
            )
        ],
      ),
      child: Column(
        children: List.generate(row, (indexCol) {
          return Row(
            children: List.generate(numberItemOnScreen, (indexRow) {
              return Expanded(
                child: numberItemOnScreen * indexCol + indexRow >= items.length
                    ? const SizedBox()
                    : items[numberItemOnScreen * indexCol + indexRow],
              );
            }),
          );
        }),
      ),
    );
  }
}
