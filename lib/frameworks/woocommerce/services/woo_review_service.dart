import 'dart:convert';

import 'package:quiver/strings.dart';

import '../../../common/constants.dart';
import '../../../models/entities/paging_response.dart';
import '../../../models/entities/rating_count.dart';
import '../../../models/entities/review.dart';
import '../../../models/entities/review_payload.dart';
import '../../../services/https.dart';
import '../../../services/review_service.dart';
import 'woo_commerce.dart';
import 'woocommerce_api.dart';

final class WooReviewService extends ReviewService {
  final WooCommerceAPI wcApi;

  const WooReviewService(this.wcApi);

  @override
  Future<void> createReview(ReviewPayload payload) async {
    try {
      var headers = {
        'Content-Type': 'application/json',
      };
      final token = payload.token;
      if (token != null) {
        headers['User-Cookie'] = token;
      }

      final response = await httpPost(
        '${wcApi.url}/wp-json/api/flutter_woo/products/reviews'.toUri()!,
        body: jsonEncode(payload.toWooJson()),
        headers: headers,
      );
      var body = jsonDecode(response.body);
      checkExpiredCookie(response);
      if (body['message'] == null) {
        return;
      } else {
        throw Exception(body['message']);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Review>> getReviews(
    productId, {
    int page = 1,
    int perPage = 20,
  }) async {
    try {
      var response = await wcApi.getAsync(
        'products/reviews?per_page=$perPage&page=$page&product=$productId',
        version: 3,
      );
      var list = <Review>[];
      if (response is Map && isNotBlank(response['message'])) {
        throw Exception(response['message']);
      } else {
        for (var item in response) {
          list.add(Review.fromJson(item));
        }
        return PagingResponse(data: list);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<RatingCount?> getProductRatingCount(String productId) async {
    try {
      final response = await httpCache(
          '${wcApi.url}/wp-json/api/flutter_woo/products/$productId/rating_counts'
              .toUri()!);

      var json = jsonDecode(response.body);

      if (json is Map && isNotBlank(json['message'])) {
        throw Exception(json['message']);
      } else {
        return RatingCount.fromJson(json);
      }
    } catch (e) {
      return null;
    }
  }
}
