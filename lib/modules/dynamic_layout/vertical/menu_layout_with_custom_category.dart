import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../generated/l10n.dart';
import '../../../models/category/list_product_model.dart';
import '../../../models/entities/category.dart';
import '../../../models/index.dart' show CategoryModel, ProductModel;
import '../../../services/index.dart';
import '../../../widgets/common/background_color_widget.dart';
import '../category/category_icon_item.dart';
import '../config/category_config.dart';
import '../config/category_item_config.dart';
import '../config/product_config.dart';
import '../helper/header_view.dart';
import '../helper/helper.dart';

class MenuLayoutWithCustomCategory extends StatefulWidget {
  final ProductConfig config;
  final CategoryConfig categoryConfig;

  const MenuLayoutWithCustomCategory({
    required this.config,
    required this.categoryConfig,
  });

  @override
  State<MenuLayoutWithCustomCategory> createState() => _StateMenuLayout();
}

class _StateMenuLayout extends State<MenuLayoutWithCustomCategory> {
  final _productCache = <int, ListProductModel>{};

  final _positionNotifier = ValueNotifier(0);

  int get position => _positionNotifier.value;

  set position(int value) => _positionNotifier.value = value;

  CategoryConfig get categoryConfig => widget.categoryConfig;

  @override
  void dispose() {
    _positionNotifier.dispose();
    _productCache.forEach((key, value) {
      value.dispose();
    });
    super.dispose();
  }

  List<Category> matchCategories(
    List<Category>? categories,
    List<CategoryItemConfig> items,
  ) {
    var values = categories ?? [];
    return values.where((item) {
      return items.indexWhere((e) => item.id == e.category) != -1;
    }).toList();
  }

  void onTapSeeAll(List<Category> categories) {
    if (categories.length <= position) {
      return;
    }
    var item = categories[position];
    ProductModel.showList(
      config: widget.config.jsonData,
      cateId: item.id,
    );
  }

  Widget renderMenuHeader(
    bool isFirstLoad,
    List<Category> categories,
  ) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: Builder(
          builder: (_) {
            if (isFirstLoad) return kLoadingWidget(context);
            if (categories.isEmpty) return const SizedBox();
            return ValueListenableBuilder(
              valueListenable: _positionNotifier,
              builder: (context, value, _) {
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  separatorBuilder: (context, index) => SizedBox(
                    width: categoryConfig.separateWidth,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final item = categories[index];
                    final items = categoryConfig.items;
                    final itemConfig = items.firstWhereOrNull(
                      (e) => e.category == item.id,
                    );
                    return CategoryIconItem(
                      isSelected: index == value,
                      commonConfig: categoryConfig.commonItemConfig,
                      itemConfig: itemConfig,
                      iconSize: 64,
                      onTap: (_) => position = index,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categoryConfig = widget.categoryConfig;

    return LayoutBuilder(
      builder: (_, constraints) {
        final isTablet = Layout.isDisplayTablet(context);

        var widthScreen = constraints.maxWidth;

        /// 2 columns on mobile, 3 columns on ipad
        var crossAxisCount = isTablet ? 3 : 2;
        var widthContent = isTablet ? widthScreen / 3 : (widthScreen / 2);

        var itemHeight = widget.config.productListItemHeight;
        if (widget.config.showQuantity) {
          itemHeight += 30;
        }
        if (widget.config.showCartButton) {
          itemHeight += 30;
        }

        var childAspectRatio = (isTablet ? 0.94 : 1) *
            widthContent /
            (widthContent * (widget.config.imageRatio) + itemHeight);

        return BackgroundColorWidget(
          enable: widget.config.enableBackground,
          child: LimitedBox(
            maxHeight: constraints.maxHeight,
            child: Selector<CategoryModel, bool>(
              selector: (context, model) => model.isLoading,
              builder: (_, isLoading, __) {
                final model = context.read<CategoryModel>();
                final items = categoryConfig.items;
                final categories = matchCategories(model.categories, items);
                return CustomScrollView(
                  cacheExtent: 1000,
                  slivers: <Widget>[
                    if (widget.config.name != null)
                      SliverToBoxAdapter(
                        child: HeaderView(
                          headerText: widget.config.name ?? '',
                          showSeeAll: !ServerConfig().isListingType,
                          callback: () => onTapSeeAll(categories),
                        ),
                      ),
                    renderMenuHeader(model.isFirstLoad, categories),
                    if (categories.isNotEmpty)
                      ValueListenableBuilder(
                        valueListenable: _positionNotifier,
                        builder: (context, position, child) {
                          const emptyWidget = SliverToBoxAdapter(
                            child: SizedBox(),
                          );
                          if (categories.length <= position) {
                            return emptyWidget;
                          }
                          final item = categories[position];
                          final id = item.id;
                          if (id == null) return emptyWidget;
                          return SliverListProductItemWidget(
                            key: ValueKey(position),
                            model: _productCache[position],
                            categoryId: id,
                            putIfAbsent: (value) =>
                                _productCache[position] = value,
                            crossAxisCount: crossAxisCount,
                            childAspectRatio: childAspectRatio,
                            widthContent: widthContent,
                            config: widget.config,
                          );
                        },
                      ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class SliverListProductItemWidget extends StatefulWidget {
  final ListProductModel? model;
  final String categoryId;
  final Function(ListProductModel) putIfAbsent;
  final int crossAxisCount;
  final double childAspectRatio;
  final double widthContent;
  final ProductConfig config;

  const SliverListProductItemWidget({
    this.model,
    required this.categoryId,
    required this.putIfAbsent,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.widthContent,
    required this.config,
    super.key,
  });

  @override
  StateSliverListProductItemWidget createState() =>
      StateSliverListProductItemWidget();
}

class StateSliverListProductItemWidget
    extends State<SliverListProductItemWidget> {
  /// limit products
  int get limit => 25;

  late ListProductModel model;

  @override
  void initState() {
    super.initState();
    model = widget.model ??
        ListProductModel(
          categoryId: widget.categoryId,
          limit: limit,
        );
    if (widget.model == null) {
      widget.putIfAbsent(model);
      model.getData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: model,
      builder: (context, child) {
        if (model.isFirstLoad) {
          return SliverToBoxAdapter(
            child: kLoadingWidget(context),
          );
        }

        final products = model.data;

        if (products.isEmpty) {
          return SliverToBoxAdapter(
            child: Container(
              height: 100,
              alignment: Alignment.center,
              child: Text(S.of(context).noProduct),
            ),
          );
        }

        if (widget.config.cardDesign == CardDesign.horizontal) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: false,
              (BuildContext context, int index) {
                return Services().widget.renderProductCardView(
                      item: products[index],
                      width: widget.widthContent,
                      config: widget.config,
                      ratioProductImage: widget.config.imageRatio,
                    );
              },
              childCount: products.length,
            ),
          );
        }

        return SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: widget.config.hPadding,
            vertical: widget.config.vPadding,
          ),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.crossAxisCount,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: widget.childAspectRatio,
            ),
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: false,
              (BuildContext context, int index) {
                return Services().widget.renderProductCardView(
                      item: products[index],
                      width: widget.widthContent,
                      config: widget.config,
                      ratioProductImage: widget.config.imageRatio,
                    );
              },
              childCount: products.length,
            ),
          ),
        );
      },
    );
  }
}
