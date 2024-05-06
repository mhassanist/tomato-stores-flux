import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../models/index.dart' show Product, ProductModel;
import '../../../models/product_variant_model.dart';
import '../../../services/index.dart';

class DetailProductLayout extends StatefulWidget {
  final Product product;
  final ScrollController? scrollController;
  final Widget Function(DetailProductStateUI stateUI) builder;

  const DetailProductLayout({
    required this.builder,
    required this.product,
    this.scrollController,
  });

  @override
  State<DetailProductLayout> createState() => _DetailProductLayoutState();
}

class _DetailProductLayoutState extends State<DetailProductLayout>
    with SingleTickerProviderStateMixin {
  late final _scrollController = widget.scrollController ?? ScrollController();

  Map<String, String> mapAttribute = HashMap();
  late Product product = widget.product;
  var top = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(DetailProductLayout oldWidget) {
    if (oldWidget.product.type != widget.product.type) {
      setState(() {
        product = widget.product;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: SafeArea(
        bottom: false,
        top: kProductDetail.safeArea,
        child: ChangeNotifierProvider(
          create: (_) => ProductModel(),
          child: Consumer<ProductVariantModel>(
            builder: (context, model, child) {
              final enableShoppingCart = Services().widget.enableShoppingCart(
                  widget.product.copyWith(isRestricted: false));
              return widget.builder(
                DetailProductStateUI(
                  scrollController: _scrollController,
                  enableShoppingCart: enableShoppingCart,
                  showBottomCornerCart:
                      enableShoppingCart && kAdvanceConfig.showBottomCornerCart,
                  showProductCategories: kProductDetail.showProductCategories,
                  enableVendorChat: ServerConfig().isVendorType() &&
                      kConfigChat.enableSmartChat,
                  showVideo: kProductDetail.showVideo,
                  showDescription: enableShoppingCart,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DetailProductStateUI {
  final bool enableShoppingCart;
  final bool showBottomCornerCart;
  final bool showProductCategories;
  final bool enableVendorChat;
  final ScrollController scrollController;
  final bool showVideo;
  final bool showDescription;

  DetailProductStateUI({
    required this.enableShoppingCart,
    required this.showBottomCornerCart,
    required this.showProductCategories,
    required this.enableVendorChat,
    required this.scrollController,
    required this.showVideo,
    required this.showDescription,
  });
}
