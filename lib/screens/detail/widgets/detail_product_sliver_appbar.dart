import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../models/index.dart';
import '../../../widgets/product/widgets/heart_button.dart';
import '../product_detail_screen.dart';
import 'product_image_list.dart';
import 'product_image_slider.dart';

class DetailProductSliverAppBar extends StatelessWidget {
  const DetailProductSliverAppBar({
    required this.product,
    required this.isLoading,
    required this.onChangeImage,
  });

  final Product product;
  final bool isLoading;
  final void Function(int) onChangeImage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 1.0,
      expandedHeight: kIsWeb ? 0 : height * kProductDetail.height,
      pinned: true,
      floating: false,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColorLight.withOpacity(0.7),
          child: IconButton(
            icon: Icon(
              Icons.close,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              context.read<ProductModel>().clearProductVariations();
              Navigator.pop(context);
            },
          ),
        ),
      ),
      actions: <Widget>[
        if (isLoading != true)
          HeartButton(
            product: product,
            size: 20.0,
            color: Theme.of(context).primaryColor,
          ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: CircleAvatar(
            backgroundColor:
                Theme.of(context).primaryColorLight.withOpacity(0.7),
            child: IconButton(
              icon: const Icon(Icons.more_vert, size: 19),
              color: Theme.of(context).primaryColor,
              onPressed: () => ProductDetailScreen.showMenu(
                context,
                product,
                isLoading: isLoading,
              ),
            ),
          ),
        ),
      ],
      flexibleSpace: Builder(
        builder: (context) {
          var item = Product.cloneFrom(product);
          if (!kProductDetail.showVideo && item.videoUrl != null) {
            item.videoUrl = null;
          }
          return kIsWeb
              ? const SizedBox()
              : kProductDetail.productImageLayout.isList
                  ? ProductImageList(
                      product: item,
                      onChange: (index) {
                        onChangeImage(index);
                      },
                      height: height * kProductDetail.height * 0.8,
                    )
                  : ProductImageSlider(
                      product: item,
                      onChange: (index) {
                        onChangeImage(index);
                      },
                    );
        },
      ),
    );
  }
}
