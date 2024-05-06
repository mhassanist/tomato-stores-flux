import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../models/app_model.dart';
import '../../../models/entities/product.dart';
import '../../../models/product_variant_model.dart';
import '../../../modules/dynamic_layout/tabbar/tabbar_icon.dart';
import '../../../services/index.dart'; //
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/product/quantity_selection/quantity_selection.dart';
import '../mixins/corner_cart_mixin.dart';
import '../mixins/detail_product_mixin.dart';
import '../mixins/detail_product_price_mixin.dart';
import '../widgets/buy_button_widget.dart';
import '../widgets/product_common_info.dart';
import '../widgets/product_description.dart'; //
import '../widgets/product_detail_categories.dart'; //
import '../widgets/product_gallery.dart';
import '../widgets/product_short_description.dart'; //
import '../widgets/product_tag.dart'; //
import '../widgets/product_title/product_title_state_ui.dart';
import '../widgets/product_title/product_title_widget.dart';
import '../widgets/recent_product.dart'; //
import '../widgets/related_product.dart'; //
import '../widgets/related_product_from_same_store.dart'; //
import 'detail_product_layout.dart';

const _kSizeBttomWidget = 115.0;
const _kSizeCornerButton = 40.0;
const _marginBottonCornerButton = 22.0;
const _marginEndCornerButton = 10.0;

class FlatStyleDetailProductWidget extends StatefulWidget {
  const FlatStyleDetailProductWidget(
    this.stateUI, {
    super.key,
    required this.product,
    required this.isLoading,
  });

  final Product product;
  final bool isLoading;
  final DetailProductStateUI stateUI;

  @override
  State<FlatStyleDetailProductWidget> createState() =>
      _FlatStyleDetailProductWidgetState();
}

class _FlatStyleDetailProductWidgetState
    extends State<FlatStyleDetailProductWidget>
    with
        SingleTickerProviderStateMixin,
        CornerCartMixin,
        DetailProductMixin,
        DetailProductPriceMixin {
  final _priceWidgetController = ValueNotifier<double>(0.0);
  double _power = 0;
  bool _scrollUp = false;

  DetailProductStateUI get stateUI => widget.stateUI;

  bool _listenerNotificationOfScroll(Notification notification) {
    if (enableAutoHideButtonBuy) {
      if (notification is ScrollUpdateNotification) {
        var deltaScroll = (notification.dragDetails?.delta.dy ?? 0.0);

        var deltaScrollUpSpeed = deltaScroll;
        if (deltaScrollUpSpeed > 0) {
          _scrollUp = true;
        } else if (deltaScrollUpSpeed < 0) {
          _scrollUp = false;
        }

        if (_scrollUp) {
          if (_power < 0) {
            _power = 0;
          }
          _power++;
          deltaScrollUpSpeed += _power;
        } else {
          if (_power > 0) {
            _power = 0;
          }
          _power--;
          deltaScrollUpSpeed += _power;
        }

        if (deltaScrollUpSpeed.abs() < 1) {
          deltaScroll = deltaScrollUpSpeed;
        } else {
          _power = 0;
        }

        final delta = _priceWidgetController.value + deltaScroll;

        _priceWidgetController.value = delta > 0
            ? 0
            : delta < -_kSizeBttomWidget
                ? -_kSizeBttomWidget
                : delta;
      } else if (notification is UserScrollNotification &&
          notification.direction == ScrollDirection.idle) {
        if ((_priceWidgetController.value).abs() > (_kSizeBttomWidget * 0.8)) {
          _priceWidgetController.value = -_kSizeBttomWidget;
        } else {
          _priceWidgetController.value = 0;
        }
      }
    }
    return true;
  }

  @override
  TickerProvider get vsync => this;

  @override
  bool get showBottomCornerCart => stateUI.showBottomCornerCart;

  @override
  bool get isLoading => widget.isLoading;

  @override
  Product get product => widget.product;

  @override
  Product get productData => widget.product;

  @override
  bool get enableVendorChat => stateUI.enableVendorChat;

  bool get enableAutoHideButtonBuy =>
      product.isVariableProduct ||
      product.isSimpleType ||
      product.isNofoundType;

  @override
  void onUpdateVariant() {
    _priceWidgetController.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    final detailPriceData = calculatorPrice();

    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              _renderDetailProduct(detailPriceData),
              if (enableAutoHideButtonBuy == false) renderCornerCart(),
            ],
          ),
        ),
        if (kProductDetail.fixedBuyButtonToBottom &&
            enableAutoHideButtonBuy == false)
          renderFixedBuyButtonOnBottom(),
      ],
    );
  }

  Widget _renderDetailProduct(DetailProductPriceStateUI detailPriceData) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: floatingActionButton,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: NotificationListener(
        onNotification: _listenerNotificationOfScroll,
        child: Stack(
          children: [
            CustomScrollView(
              controller: stateUI.scrollController,
              slivers: <Widget>[
                detailProductAppBarWidget,
                SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      const SizedBox(height: 2),
                      if (kIsWeb)
                        ValueListenableBuilder<int>(
                          valueListenable: selectIndexNotifier,
                          builder: (context, index, child) {
                            return ProductGallery(
                              product: widget.product,
                              selectIndex: index,
                            );
                          },
                        ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 4.0,
                          left: 15,
                          right: 15,
                        ),
                        child: widget.product.isGroupedProduct
                            ? const SizedBox()
                            : ProductTitle(
                                widget.product,
                                style: enableAutoHideButtonBuy
                                    ? ProductTitleStyle.style01
                                    : ProductTitleStyle.normal,
                                detailProductPriceStateUI: detailPriceData,
                              ),
                      ),
                    ],
                  ),
                ),
                if (stateUI.enableShoppingCart)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        child: ProductCommonInfo(
                          product: widget.product,
                          isLoading: widget.isLoading,
                          showBuyButton: enableAutoHideButtonBuy == false,
                          wrapSliver: false,
                        ),
                      ),
                    ),
                  ),
                if (!stateUI.enableShoppingCart &&
                    widget.product.shortDescription != null &&
                    widget.product.shortDescription!.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ProductShortDescription(widget.product),
                    ),
                  ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      // horizontal: 15.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Column(
                            children: [
                              Services()
                                  .widget
                                  .renderVendorInfo(widget.product),
                              ProductDescription(widget.product),
                              if (kProductDetail.showProductCategories)
                                ProductDetailCategories(widget.product),
                              if (kProductDetail.showProductTags)
                                ProductTag(widget.product),
                              Services()
                                  .widget
                                  .productReviewWidget(widget.product),
                            ],
                          ),
                        ),
                        if (kProductDetail.showRelatedProductFromSameStore &&
                            widget.product.store?.id != null)
                          RelatedProductFromSameStore(widget.product),
                        if (kProductDetail.showRelatedProduct)
                          RelatedProduct(widget.product),
                        if (kProductDetail.showRecentProduct)
                          RecentProducts(excludeProduct: widget.product),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (isVisibleBuyButton && enableAutoHideButtonBuy)
              ValueListenableBuilder(
                valueListenable: _priceWidgetController,
                builder: (_, position, __) {
                  final sizeKeyboard = MediaQuery.of(context).viewInsets.bottom;
                  return Positioned(
                    bottom: sizeKeyboard > 0 ? sizeKeyboard : position,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(1),
                            offset: const Offset(0, -1),
                          )
                        ],
                      ),
                      child: ClipPath(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .background
                                .withOpacity(0.5),
                          ),
                          height: _kSizeBttomWidget,
                          width: MediaQuery.sizeOf(context).width,
                          padding: const EdgeInsetsDirectional.only(
                            start: 16,
                            end: 16,
                            bottom: 20,
                            top: 5,
                          ),
                          child: Builder(builder: (context) {
                            var model =
                                Provider.of<ProductVariantModel>(context);
                            var quantity = model.quantity;
                            return BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Services().widget.renderDetailPrice(
                                            context,
                                            product,
                                            detailPriceData.price),
                                        const Spacer(),
                                        QuantitySelection(
                                          height: 30,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          limitSelectQuantity:
                                              kCartDetail['maxAllowQuantity'] ??
                                                  100,
                                          value: quantity,
                                          onChanged: (int value) {
                                            model.updateValues(quantity: value);
                                            return true;
                                          },
                                          style: QuantitySelectionStyle.style01,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: BuyButtonWidget(
                                          showQuantity: false,
                                        ),
                                      ),
                                      SizedBox(width: 40, height: 40)
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  );
                },
              ),
            if (enableAutoHideButtonBuy)
              Positioned(
                bottom: 0,
                right: 0,
                child: renderCornerCart(
                  widthForCartIcon: _kSizeCornerButton + _marginEndCornerButton,
                  cartHeight: _kSizeCornerButton + _marginBottonCornerButton,
                  builderThumnail: (quantity) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.transparent,
                      ),
                      child: Container(
                        width: _kSizeCornerButton,
                        height: _kSizeCornerButton,
                        margin: const EdgeInsetsDirectional.only(
                          bottom: _marginBottonCornerButton,
                          end: _marginEndCornerButton,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).colorScheme.background,
                        ),
                        child: Container(
                          width: _kSizeCornerButton,
                          height: _kSizeCornerButton,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.2),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: SizedBox(
                              width: _kSizeCornerButton,
                              height: _kSizeCornerButton,
                              child: Center(
                                child: IconCart(
                                  icon: FluxImage(
                                    imageUrl:
                                        'assets/icons/tabs/icon-cart2.png',
                                    color: IconTheme.of(context).color,
                                    width: 20,
                                    useExtendedImage: false,
                                  ),
                                  totalCart: quantity,
                                  config: Provider.of<AppModel>(context,
                                          listen: false)
                                      .appConfig!
                                      .settings
                                      .tabBarConfig,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}
