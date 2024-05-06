import 'package:flutter/material.dart';

import '../../../widgets/product/index.dart';
import '../widgets/buy_button_widget.dart';

mixin CornerCartMixin<T extends StatefulWidget> on State<T> {
  late AnimationController _hideController;
  bool get showBottomCornerCart;
  TickerProvider get vsync;
  bool _isVisibleBuyButton = true;
  bool get isVisibleBuyButton => _isVisibleBuyButton;

  void _onInitController(AnimationController controller) {
    controller.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        setState(() {
          _isVisibleBuyButton = false;
        });
      } else if (status == AnimationStatus.reverse) {
        setState(() {
          _isVisibleBuyButton = true;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _hideController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 450),
      value: 1.0,
    );
  }

  @override
  void dispose() {
    _hideController.dispose();
    super.dispose();
  }

  Widget renderCornerCart({
    final Widget Function(int quantity)? builderThumnail,
    double? widthForCartIcon,
    double? cartHeight,
  }) =>
      showBottomCornerCart
          ? Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: ExpandingBottomSheet(
                key: const ValueKey('ddd'),
                hideController: _hideController,
                onInitController: _onInitController,
                builderThumnail: builderThumnail,
                widthForCartIcon: widthForCartIcon,
                cartHeight: cartHeight,
              ),
            )
          : const SizedBox();

  Widget renderFixedBuyButtonOnBottom() => _isVisibleBuyButton
      ? Container(
          color: Theme.of(context).colorScheme.background,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: const SafeArea(
            top: false,
            child: BuyButtonWidget(),
          ),
        )
      : const SizedBox();
}
