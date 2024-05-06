import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools/image_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/index.dart';
import '../../../models/product_model.dart';
import '../mixins/detail_product_price_mixin.dart';
import 'image_galery.dart';
import 'video_feature.dart';

class ProductImageSliderStyle02 extends StatefulWidget {
  final Product product;
  final Function(int index)? onChange;
  final Function(
      BuildContext context,
      Widget pageView,
      PageController pageController,
      List<String> items,
      bool hasVideo)? customBuilder;

  const ProductImageSliderStyle02({
    Key? key,
    required this.product,
    this.onChange,
    this.customBuilder,
  }) : super(key: key);

  @override
  State<ProductImageSliderStyle02> createState() =>
      _ProductImageSliderStyle02State();
}

class _ProductImageSliderStyle02State extends State<ProductImageSliderStyle02>
    with DetailProductPriceMixin {
  final PageController _pageController = PageController();

  Timer? _timer;
  int _lastInteraction = 0;

  Future<void> nextImage() async {
    if (!mounted || !_pageController.hasClients) {
      return;
    }

    /// Cancel if the page is scrolling.
    if (_pageController.page?.round() != _pageController.page) {
      return;
    }

    /// Cancel if user has touched the gallery within 3 seconds.
    if (DateTime.now().millisecondsSinceEpoch - 3000 <= _lastInteraction) {
      return;
    }

    /// Cancel if video is playing.
    if (hasVideo && _currentPage == 0) {
      return;
    }

    /// Next page if not ends..
    if (_currentPage + 1 < itemList.length) {
      return _pageController.goTo(_currentPage + 1);
    }

    /// Go to first page.
    return _pageController.goTo(0);
  }

  bool initialized = false;
  bool hasVideo = false;
  bool variationLoaded = false;

  late final String _videoUrl;
  final List<String> _images = [];
  final List<String> _variationImages = [];

  int _currentPage = 0;

  List<String> get itemList => {
        if (hasVideo) _videoUrl,
        ..._images,
        ..._variationImages,
      }.toList();

  List<String> get imagesList => {..._images, ..._variationImages}.toList();

  StreamSubscription? _subChangeSelectedVariation;

  void _updateVariationImages(List<String> newImages) {
    if (!widget.product.isVariableProduct ||
        _variationImages.isNotEmpty ||
        newImages.isEmpty ||
        newImages.length == _variationImages.length) {
      return;
    }
    for (var url in newImages) {
      if (!_variationImages.contains(url)) {
        _variationImages.add(url);
      }
    }
    initialized = true;
    if (!mounted) {
      setState(() {});
    }
  }

  @override
  Product? get productData => widget.product;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) async {
      if (mounted) {
        afterFirstLayout(context);
      }
    });

    final url = widget.product.videoUrl;
    if (url != null && url.isNotEmpty) {
      _videoUrl = url.replaceAll('http://', 'https://');
      hasVideo = true;
    }

    _images.addAll(widget.product.images);

    if (kProductDetail.showSelectedImageVariant) {
      _subChangeSelectedVariation =
          eventBus.on<EventChangeSelectedVariation>().listen((event) {
        if (!mounted) {
          return;
        }

        /// Skip first time when variation loaded.
        if (!variationLoaded) {
          variationLoaded = true;
          return;
        }

        final image = event.productVariation?.imageFeature;
        _pageController.goToUrl(image, itemList);
      });
    }
  }

  @override
  void dispose() {
    _cancelTimer();
    _subChangeSelectedVariation?.cancel();
    super.dispose();
  }

  void _startTimer() {
    if (_timer?.isActive ?? false) {
      return;
    }

    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (_) {
        nextImage();
      },
    );
  }

  void _cancelTimer() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
  }

  @override
  void didUpdateWidget(ProductImageSliderStyle02 oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (kProductDetail.autoPlayGallery) {
      _startTimer();
    } else {
      _cancelTimer();
    }
  }

  void afterFirstLayout(BuildContext context) {
    if (widget.product.isVariableProduct) {
      _updateVariationImages(
          context.read<ProductModel>().variationsFeatureImages);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!initialized) {
      _updateVariationImages(
          context.select((ProductModel _) => _.variationsFeatureImages));
    }

    if (itemList.isEmpty) {
      return const SizedBox();
    }

    final size = MediaQuery.of(context).size;

    final pageView = PageView.builder(
      controller: _pageController,
      itemCount: itemList.length,
      onPageChanged: (index) {
        _currentPage = index;
        widget.onChange?.call(index);
        setState(() {});
      },
      itemBuilder: (BuildContext context, int index) {
        if (hasVideo && index == 0) {
          return FeatureVideoPlayer(
            itemList[index],
            autoPlay: true,
          );
        }
        return GestureDetector(
          onTap: () => _onShowGallery(context, index),
          child: Hero(
            tag: 'slider_hero_tag_${itemList[index]}',
            child: ImageResize(
              url: itemList[index],
              fit: ImageTools.boxFit(kProductDetail.boxFit),
              size: kSize.large,
              width: size.width,
              hidePlaceHolder: true,
              forceWhiteBackground: kProductDetail.forceWhiteBackground,
            ),
          ),
        );
      },
    );

    if (widget.customBuilder != null) {
      return widget.customBuilder?.call(
        context,
        pageView,
        _pageController,
        itemList,
        hasVideo,
      );
    }

    final priceData = calculatorPrice();

    return FlexibleSpaceBar(
      background: Stack(
        children: [
          Positioned.fill(
            top: kProductDetail.marginTop,
            child: Listener(
              onPointerDown: (_) => _updateLastInteraction(),
              onPointerMove: (_) => _updateLastInteraction(),
              onPointerHover: (_) => _updateLastInteraction(),
              child: pageView,
            ),
          ),
          //// dataPrice
          if (priceData.isSaleOff)
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
                margin: const EdgeInsets.only(
                        left: 4, top: 20, right: 16, bottom: 16)
                    .copyWith(top: 120),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  S.of(context).sale('${priceData.sale}'),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),

          Align(
            // bottom: 16.0,
            // // right: 16.0,
            // // left: 16.0,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset.zero,
                      color: Colors.grey.withOpacity(0.3),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300]!.withOpacity(0.5),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: itemList.length,
                          effect: ExpandingDotsEffect(
                            dotWidth: 5.0,
                            dotHeight: 5.0,
                            spacing: 5.0,
                            // fixedCenter: true,
                            dotColor: Colors.black45,
                            activeDotColor: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateLastInteraction() {
    _lastInteraction = DateTime.now().millisecondsSinceEpoch;
  }

  void _onShowGallery(BuildContext context, [index = 0]) {
    Navigator.push(
      context,
      PageRouteBuilder(pageBuilder: (context, __, ___) {
        return ImageGalery(
          images: imagesList,
          index: hasVideo ? index - 1 : index,
          heroTagPrefix: 'slider_hero_tag_',
        );
      }),
    );
  }
}

extension on PageController {
  Future<void> goTo(int page) {
    return animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }

  void goToUrl(String? url, List<String> urls) {
    if (url == null || urls.isEmpty) {
      return;
    }

    final index = urls.indexOf(url);
    if (index == -1) {
      return;
    }
    animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }
}
