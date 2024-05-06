import 'package:flutter/material.dart';

import '../../../../../common/config.dart';
import '../../../../../common/tools/price_tools.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../modules/dynamic_layout/helper/countdown_timer.dart';
import '../../../../../services/services.dart';
import '../../../../../widgets/common/start_rating.dart';
import '../../../../../widgets/product/widgets/sale_progress.dart';
import '../../../mixins/detail_product_price_mixin.dart';

class ProductTitleNormalWidget extends StatelessWidget {
  final DetailProductPriceStateUI priceData;

  const ProductTitleNormalWidget(this.priceData);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final product = priceData.product;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (product!.vendor != null)
          Row(
            children: <Widget>[
              Text(
                product.vendor!,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: theme.colorScheme.secondary,
                    ),
              ),
            ],
          ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                product.name ?? '',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(fontSizeFactor: 0.9),
              ),
            ),
            if (priceData.isSaleOff)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
                margin: const EdgeInsets.only(left: 4, top: 4),
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
          ],
        ),
        const SizedBox(height: 10),
        Services().widget.renderDetailPrice(context, product, priceData.price),

        /// For variable product, hide regular price when loading product variation.
        if (priceData.isSaleOff) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                PriceTools.getCurrencyFormatted(
                  priceData.regularPrice,
                  priceData.currencyRate,
                  currency: priceData.currency,
                )!,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
              const SizedBox(width: 10),
              if (priceData.isShowCountDown) ...[
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    S.of(context).endsIn('').toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                          color: theme.colorScheme.secondary.withOpacity(0.9),
                        )
                        .apply(fontSizeFactor: 0.6),
                  ),
                ),
                CountDownTimer(
                  Duration(milliseconds: priceData.countDown),
                ),
              ],
            ],
          ),
          const SizedBox(height: 5),
        ],
        Row(
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            if (kAdvanceConfig.enableRating && product.averageRating != null)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SmoothStarRating(
                  allowHalfRating: true,
                  starCount: 5,
                  spacing: 0.0,
                  rating: product.averageRating,
                  size: 17.0,
                  label: Text(
                    ' (${product.ratingCount})',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.8),
                        ),
                  ),
                ),
              ),
            const Spacer(),
            if (priceData.dateOnSaleTo != null && priceData.countDown > 0)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SaleProgressBar(
                  product: product,
                  productVariation: priceData.productVariation,
                  width: 160,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
