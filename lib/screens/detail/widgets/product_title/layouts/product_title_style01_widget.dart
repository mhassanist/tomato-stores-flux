import 'package:flutter/material.dart';

import '../../../../../common/config.dart';
import '../../../../../generated/l10n.dart';
import '../../../mixins/detail_product_price_mixin.dart';

class ProductTitleStyle01Widget extends StatelessWidget {
  const ProductTitleStyle01Widget(this.priceData, {super.key});

  final DetailProductPriceStateUI priceData;

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
            Expanded(
              child: Text(
                product.name ?? '',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(fontSizeFactor: 0.9),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
                if (kAdvanceConfig.enableRating &&
                    product.averageRating != null &&
                    product.averageRating! > 0)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star_rate_rounded,
                        color: Colors.yellow,
                      ),
                      Text(
                        '(${product.averageRating?.toString() ?? '--'})',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
              ],
            )
          ],
        ),
        const SizedBox(height: 10),
        // Services().widget.renderDetailPrice(context, product, priceData.price),

        /// For variable product, hide regular price when loading product variation.
        // if (priceData.isSaleOff) ...[
        //   Row(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: <Widget>[
        //       Text(
        //         PriceTools.getCurrencyFormatted(
        //           priceData.regularPrice,
        //           priceData.currencyRate,
        //           currency: priceData.currency,
        //         )!,
        //         style: Theme.of(context).textTheme.titleMedium!.copyWith(
        //               color: Theme.of(context)
        //                   .colorScheme
        //                   .secondary
        //                   .withOpacity(0.6),
        //               fontWeight: FontWeight.w400,
        //               decoration: TextDecoration.lineThrough,
        //             ),
        //       ),
        //       const SizedBox(width: 10),
        //       if (priceData.isShowCountDown) ...[
        //         const Spacer(),
        //         Padding(
        //           padding: const EdgeInsets.only(left: 4.0),
        //           child: Text(
        //             S.of(context).endsIn('').toUpperCase(),
        //             style: Theme.of(context)
        //                 .textTheme
        //                 .titleMedium!
        //                 .copyWith(
        //                   color: theme.colorScheme.secondary.withOpacity(0.9),
        //                 )
        //                 .apply(fontSizeFactor: 0.6),
        //           ),
        //         ),
        //         CountDownTimer(
        //           Duration(milliseconds: priceData.countDown),
        //         ),
        //       ],
        //     ],
        //   ),
        //   const SizedBox(height: 5),
        // ],
        // Row(
        //   textBaseline: TextBaseline.alphabetic,
        //   crossAxisAlignment: CrossAxisAlignment.baseline,
        //   children: [
        //     if (kAdvanceConfig.enableRating && product.averageRating != null)
        //       Padding(
        //         padding: const EdgeInsets.only(top: 5.0),
        //         child: SmoothStarRating(
        //           allowHalfRating: true,
        //           starCount: 5,
        //           spacing: 0.0,
        //           rating: product.averageRating,
        //           size: 17.0,
        //           label: Text(
        //             ' (${product.ratingCount})',
        //             style: Theme.of(context).textTheme.titleSmall!.copyWith(
        //                   color: Theme.of(context)
        //                       .colorScheme
        //                       .secondary
        //                       .withOpacity(0.8),
        //                 ),
        //           ),
        //         ),
        //       ),
        //     const Spacer(),
        //     if (priceData.dateOnSaleTo != null && priceData.countDown > 0)
        //       Padding(
        //         padding: const EdgeInsets.only(left: 8.0),
        //         child: SaleProgressBar(
        //           product: product,
        //           productVariation: priceData.productVariation,
        //           width: 160,
        //         ),
        //       ),
        //   ],
        // ),
      ],
    );
  }
}
