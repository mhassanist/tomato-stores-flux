import 'dart:async';
import 'dart:convert' as convert;

import 'package:quiver/strings.dart';
import 'package:random_string/random_string.dart' show randomNumeric;

import '../../../common/constants.dart';
import '../../../data/boxes.dart';
import '../../../models/entities/review_payload.dart';
import '../../../models/index.dart'
    show
        AdditionalPaymentInfo,
        Address,
        CartModel,
        Category,
        Coupons,
        Order,
        OrderStatus,
        PaymentMethod,
        Product,
        Review,
        ShippingMethod,
        Store,
        User,
        UserModel;
import '../../../services/base_services.dart';
import '../../../services/https.dart';

class OpencartService extends BaseServices {
  String? cookie;

  OpencartService({required String domain, String? blogDomain})
      : super(domain: domain, blogDomain: blogDomain) {
    getCookie();
  }

  Future<void> getCookie() async {
    if (UserBox().opencartCookie == null) {
      UserBox().opencartCookie = 'OCSESSID=${randomNumeric(30)}; '
          'PHPSESSID=${randomNumeric(30)}';
    }
    cookie = UserBox().opencartCookie;
  }

  @override
  Future<List<Category>> getCategories() async {
    try {
      var response = await httpGet(
        '$domain/index.php?route=extension/mstore/category&limit=100&lang=$languageCode'
            .toUri()!,
      );
      var list = <Category>[];
      if (response.statusCode == 200) {
        for (var item in convert.jsonDecode(response.body)['data']) {
          list.add(Category.fromOpencartJson(item));
        }
      }
      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> getProducts({userId}) async {
    try {
      var response = await httpGet(
          '$domain/index.php?route=extension/mstore/product'.toUri()!);
      var list = <Product>[];
      if (response.statusCode == 200) {
        for (var item in convert.jsonDecode(response.body)['data']) {
          list.add(Product.fromOpencartJson(item));
        }
      }
      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> fetchProductsLayout({
    required config,
    userId,
    bool refreshCache = false,
  }) async {
    try {
      var list = <Product>[];
      if (config['layout'] == 'imageBanner' ||
          config['layout'] == 'circleCategory') {
        return list;
      }

      var endPoint = '&limit=${config['limit'] ?? apiPageSize}';
      if (config.containsKey('category')) {
        endPoint += "&category=${config["category"]}";
      }
      if (config.containsKey('tag')) {
        endPoint += "&tag=${config["tag"]}";
      }
      if (config.containsKey('page')) {
        endPoint += "&page=${config["page"]}";
      }

      endPoint += '&lang=$languageCode';

      /// sort by
      if (config.containsKey('orderby') && config['orderby'] != null) {
        endPoint += '&sort=${getOrderByKey(config['orderBy'])}';
      }

      endPoint +=
          '&order=${getOrderDirection(config.containsKey('order') ? config['order'] : 'desc')}';

      var maxPrice = config['maxPrice'];
      var minPrice = config['minPrice'];

      if (maxPrice != null && maxPrice > 0) {
        endPoint += '&max_price=${(maxPrice as double).toInt().toString()}';
      }
      if (minPrice != null && minPrice > 0) {
        endPoint += '&min_price=${(minPrice as double).toInt().toString()}';
      }

      var response = await httpCache(
        '$domain/index.php?route=extension/mstore/product$endPoint'.toUri()!,
        refreshCache: refreshCache,
      );

      if (response.statusCode == 200) {
        for (var item in convert.jsonDecode(response.body)['data']) {
          var product = Product.fromOpencartJson(item);
          if (config['category'] != null &&
              "${config["category"]}".isNotEmpty) {
            product.categoryId = config['category'].toString();
          }
          list.add(product);
        }
      }
      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  String getOrderByKey(orderBy) {
    switch (orderBy) {
      case 'price':
        return 'price';
      case 'title':
        return 'name';
      case 'popularity':
      case 'rating':
        return 'rating';
      case 'date':
      default:
        return 'date_added';
    }
  }

  @override
  String getOrderDirection(order) {
    switch (order) {
      case 'asc':
        return 'ASC';
      case 'desc':
      default:
        return 'DESC';
    }
  }

  @override
  Future<List<Product>?> fetchProductsByCategory({
    categoryId,
    tagId,
    page,
    minPrice,
    maxPrice,
    orderBy,
    order,
    featured,
    onSale,
    attribute,
    attributeTerm,
    listingLocation,
    userId,
    String? include,
    String? search,
    bool? productType,
    nextCursor,
  }) async {
    try {
      var list = <Product>[];

      var endPoint =
          '/index.php?route=extension/mstore/product&limit=$apiPageSize&lang=$languageCode';
      if (page != null) {
        endPoint += '&page=$page';
      }
      if (categoryId != null &&
          categoryId != '-1' &&
          categoryId.toString().isNotEmpty) {
        endPoint += '&category=$categoryId';
      }
      if (tagId != null) {
        endPoint += '&tag=$tagId';
      }
      if (maxPrice != null && maxPrice > 0) {
        endPoint += '&max_price=${(maxPrice as double).toInt().toString()}';
      }
      if (minPrice != null && minPrice > 0) {
        endPoint += '&min_price=${(minPrice as double).toInt().toString()}';
      }
      if (search != null) {
        endPoint += '&search=$search';
      }
      if (orderBy != null) {
        endPoint += '&sort=${getOrderByKey(orderBy)}';
      }
      endPoint += '&order=${getOrderDirection(order)}';

      // ignore: prefer_single_quotes
      var response = await httpGet("$domain$endPoint".toUri()!);
      if (response.statusCode == 200) {
        for (var item in convert.jsonDecode(response.body)['data']) {
          list.add(Product.fromOpencartJson(item));
        }
      }
      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> loginFacebook({String? token}) async {
    try {
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/account/socialLogin'
              .toUri()!,
          body: convert.jsonEncode({'token': token, 'type': 'facebook'}),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        var user = User.fromOpencartJson(body['data'], '');
        user.isSocial = true;
        return user;
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('Login fail');
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<User> loginSMS({String? token}) async {
    try {
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/account/socialLogin'
              .toUri()!,
          body: convert.jsonEncode({'token': token, 'type': 'firebase_sms'}),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        var user = User.fromOpencartJson(body['data'], '');
        user.isSocial = true;
        return user;
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('Login fail');
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<User> loginApple(
      {String? token, String? firstName, String? lastName}) async {
    try {
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/account/socialLogin'
              .toUri()!,
          body: convert.jsonEncode({'token': token, 'type': 'apple'}),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        var user = User.fromOpencartJson(body['data'], '');
        user.isSocial = true;
        return user;
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('Login fail');
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Review>> getReviews(productId,
      {int page = 1, int perPage = 10}) async {
    try {
      var response = await httpGet(
          '$domain/index.php?route=extension/mstore/review&id=$productId'
              .toUri()!);
      var list = <Review>[];
      if (response.statusCode == 200) {
        for (var item in convert.jsonDecode(response.body)['data']) {
          list.add(Review.fromOpencartJson(item));
        }
      }
      return PagingResponse(data: list);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ShippingMethod>> getShippingMethods({
    CartModel? cartModel,
    String? token,
    String? checkoutId,
    Store? store,
  }) async {
    try {
      var address = cartModel!.address!;
      var list = <ShippingMethod>[];
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/shipping_address/save'
              .toUri()!,
          body: convert.jsonEncode(address.toOpencartJson()),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['success'] == 1) {
        var res = await httpGet(
            '$domain/index.php?route=extension/mstore/shipping_method'.toUri()!,
            headers: {'cookie': cookie!});
        final body = convert.jsonDecode(res.body);
        if (res.statusCode == 200 && body['data']['error_warning'] == '') {
          Map<String, dynamic> data = body['data']['shipping_methods'];
          for (var item in data.values.toList()) {
            if (item['quote'] is Map) {
              if (item['quote']['code'] != null) {
                list.add(ShippingMethod.fromOpencartJson(item));
              } else {
                for (var quote
                    in Map<String, dynamic>.from(item['quote']).values) {
                  quote['quote'] = quote;
                  list.add(ShippingMethod.fromOpencartJson(quote));
                }
              }
            } else if (item['quote'] is List) {
              for (var quote in item['quote']) {
                item['quote'] = quote;
                list.add(ShippingMethod.fromOpencartJson(item));
              }
            }
          }
          return list;
        } else {
          throw Exception(body['data']['error_warning']);
        }
      } else {
        throw Exception(body['error'][0]);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<PaymentMethod>> getPaymentMethods({
    CartModel? cartModel,
    ShippingMethod? shippingMethod,
    String? token,
  }) async {
    try {
      var address = cartModel!.address;
      var list = <PaymentMethod>[];
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/shipping_method/save'
              .toUri()!,
          body: convert.jsonEncode(
              {'shipping_method': shippingMethod!.id, 'comment': 'no comment'}),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['success'] == 1) {
        response = await httpPost(
            '$domain/index.php?route=extension/mstore/payment_address/save'
                .toUri()!,
            body: convert.jsonEncode(address!.toOpencartJson()),
            headers: {'content-type': 'application/json', 'cookie': cookie!});
        final body = convert.jsonDecode(response.body);
        if (response.statusCode == 200 && body['success'] == 1) {
          //update telephone for customer info to show phone number in order detail
          unawaited(
              updateUserInfo({'telephone': address.phoneNumber}, cookie!));

          var res = await httpGet(
              '$domain/index.php?route=extension/mstore/payment_method'
                  .toUri()!,
              headers: {'cookie': cookie!});
          final body = convert.jsonDecode(res.body);
          if (res.statusCode == 200 && body['data']['error_warning'] == '') {
            Map<String, dynamic> data = body['data']['payment_methods'];
            for (var item in data.values.toList()) {
              list.add(PaymentMethod.fromOpencartJson(item));
            }
            return list;
          } else {
            throw Exception(body['data']['error_warning']);
          }
        } else {
          throw Exception(body['error'][0]);
        }
      } else {
        throw Exception(body['error'][0]);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Order>> getMyOrders({
    User? user,
    dynamic cursor,
    String? cartId,
    String? orderStatus,
  }) async {
    try {
      if (cursor > 1) return const PagingResponse(data: []);
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/order/orders'.toUri()!,
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      var list = <Order>[];
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['data'] != null) {
        for (var item in body['data']) {
          list.add(Order.fromJson(item));
        }
      }
      return PagingResponse(data: list);
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<Order> createOrder({
    CartModel? cartModel,
    UserModel? user,
    bool? paid,
    AdditionalPaymentInfo? additionalPaymentInfo,
  }) async {
    try {
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/payment_method/save'
              .toUri()!,
          body: convert.jsonEncode({
            'payment_method': cartModel!.paymentMethod!.id,
            'agree': '1',
            'comment': cartModel.notes
          }),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200 && body['success'] == 1) {
        var res = await httpPost(
            '$domain/index.php?route=extension/mstore/order/confirm'.toUri()!,
            body: convert.jsonEncode({}),
            headers: {'cookie': cookie!});
        final body = convert.jsonDecode(res.body);
        if (res.statusCode == 200 && body['success'] == 1) {
          return Order.fromJson(body['data']);
        } else {
          throw Exception(body['error'][0]);
        }
      } else {
        throw Exception(body['error'][0]);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PagingResponse<Product>> searchProducts(
      {name,
      categoryId,
      categoryName,
      tag,
      attribute,
      attributeId,
      page,
      listingLocation,
      userId}) async {
    try {
      var list = <Product>[];

      var endPoint =
          '/index.php?route=extension/mstore/product&limit=$apiPageSize&page=$page&search=$name&lang=$languageCode';

      // ignore: prefer_single_quotes
      var response = await httpGet('$domain$endPoint'.toUri()!);
      if (response.statusCode == 200) {
        for (var item in convert.jsonDecode(response.body)['data']) {
          list.add(Product.fromOpencartJson(item));
        }
      }
      return PagingResponse(data: list);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> createUser({
    String? firstName,
    String? lastName,
    String? username,
    String? password,
    String? phoneNumber,
    bool isVendor = false,
  }) async {
    try {
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/account/register'.toUri()!,
          body: convert.jsonEncode({
            'telephone': phoneNumber,
            'email': username,
            'firstname': firstName,
            'lastname': lastName,
            'password': password,
            'confirm': password
          }),
          headers: {'content-type': 'application/json'});

      if (response.statusCode == 200) {
        return await login(username: username, password: password);
      } else {
        final body = convert.jsonDecode(response.body);
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('Can not create user');
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<User> getUserInfo(cookie) async {
    try {
      var res = await httpGet(
          '$domain/index.php?route=extension/mstore/account'.toUri()!,
          headers: {'cookie': this.cookie!});
      final body = convert.jsonDecode(res.body);
      if (res.statusCode == 200) {
        return User.fromOpencartJson(body['data'], cookie);
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('No match for E-Mail Address and/or Password');
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<User> login({username, password}) async {
    try {
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/account/login'.toUri()!,
          body: convert.jsonEncode({'email': username, 'password': password}),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return User.fromOpencartJson(body['data'], '');
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('No match for E-Mail Address and/or Password');
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<Product?> getProduct(id) async {
    try {
      var response = await httpGet(
          '$domain/index.php?route=extension/mstore/product/detail&productId=$id&lang=$languageCode'
              .toUri()!);
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Product.fromOpencartJson(body['data']);
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('Not Found');
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> addItemsToCart(CartModel cartModel, String? token) async {
    try {
      if (cookie != null) {
        var items = [];
        for (var productId in cartModel.productsInCart.keys) {
          items.add({
            'product_id': Product.cleanProductID(productId),
            'quantity': cartModel.productsInCart[productId],
            'option': cartModel.productOptionInCart[productId]
          });
        }

        var res = await httpDelete(
            '$domain/index.php?route=extension/mstore/cart/emptyCart'.toUri()!,
            headers: {'cookie': cookie!, 'content-type': 'application/json'});
        if (res.statusCode == 200) {
          final body = convert.jsonDecode(res.body);
          if (res.statusCode == 200 &&
              body['success'] == 1 &&
              body['data']['total_product_count'] == 0) {
            var res = await httpPost(
                '$domain/index.php?route=extension/mstore/cart/add'.toUri()!,
                body: convert.jsonEncode(items),
                headers: {
                  'cookie': cookie!,
                  'content-type': 'application/json'
                });
            final body = convert.jsonDecode(res.body);
            if (res.statusCode == 200 &&
                body['success'] == 1 &&
                body['data']['total_product_count'] > 0) {
              if (cartModel.couponObj != null &&
                  cartModel.couponObj!.code != null) {
                await httpPost(
                    '$domain/index.php?route=extension/mstore/cart/coupon'
                        .toUri()!,
                    body: convert
                        .jsonEncode({'coupon': cartModel.couponObj!.code}),
                    headers: {
                      'cookie': cookie!,
                      'content-type': 'application/json'
                    });
              }
              return true;
            } else {
              throw Exception('Can not add items to cart');
            }
          } else {
            throw Exception(body['error'][0]);
          }
        } else {
          throw Exception(res.reasonPhrase);
        }
      } else {
        throw Exception('You need to login to checkout');
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<Coupons> getCoupons({int page = 1, String search = ''}) async {
    try {
      var res = await httpGet(
          '$domain/index.php?route=extension/mstore/cart/coupons'.toUri()!,
          headers: {'cookie': cookie!, 'content-type': 'application/json'});
      final body = convert.jsonDecode(res.body);
      return Coupons.getListCouponsOpencart(body['data']);
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<User> loginGoogle({String? token}) async {
    try {
      var response = await httpPost(
          '$domain/index.php?route=extension/mstore/account/socialLogin'
              .toUri()!,
          body: convert.jsonEncode({'token': token, 'type': 'google'}),
          headers: {'content-type': 'application/json', 'cookie': cookie!});
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        var user = User.fromOpencartJson(body['data'], '');
        user.isSocial = true;
        return user;
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception('Login fail');
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future logout(String? token) async {
    return await httpPost(
        '$domain/index.php?route=extension/mstore/account/logout'.toUri()!,
        headers: {'content-type': 'application/json', 'cookie': cookie!});
  }

  @override
  Future getCountries() async {
    try {
      var res = await httpGet(
          '$domain/index.php?route=extension/mstore/shipping_address/countries'
              .toUri()!,
          headers: {'content-type': 'application/json'});
      final body = convert.jsonDecode(res.body);
      return body['data'];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future getStatesByCountryId(countryId) async {
    try {
      var res = await httpGet(
          '$domain/index.php?route=extension/mstore/shipping_address/states&countryId=$countryId'
              .toUri()!,
          headers: {'cookie': cookie!, 'content-type': 'application/json'});
      final body = convert.jsonDecode(res.body);
      return body['data'];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>?> updateUserInfo(
      Map<String, dynamic> json, String? token) async {
    try {
      var params = <String, dynamic>{};
      if (isNotBlank(json['user_email'])) {
        params['email'] = json['user_email'];
      }
      if (isNotBlank(json['telephone'])) {
        params['telephone'] = json['telephone'];
      }
      if (isNotBlank(json['user_pass'])) {
        params['password'] = json['user_pass'];
      }
      if (isNotBlank(json['display_name'])) {
        List items = json['display_name'].split(' ');
        params['firstname'] = items[0];
        items.removeAt(0);
        params['lastname'] = items.join(' ');
      }
      var res = await httpPut(
          '$domain/index.php?route=extension/mstore/account/edit'.toUri()!,
          body: convert.jsonEncode(params),
          headers: {'cookie': cookie!});
      final body = convert.jsonDecode(res.body);
      if (res.statusCode == 200) {
        return body['data'];
      } else {
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception("Can't update user info");
        }
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future createReview(ReviewPayload payload) async {
    var data;
    try {
      data!['product_id'] = payload.productId;
      data['name'] = payload.reviewerName;
      data['text'] = payload.review;
      var res = await httpPost(
          '$domain/index.php?route=extension/mstore/review'.toUri()!,
          body: convert.jsonEncode(data),
          headers: {'cookie': cookie!});
      if (res.statusCode == 200) {
        return null;
      } else {
        final body = convert.jsonDecode(res.body);
        List? error = body['error'];
        if (error != null && error.isNotEmpty) {
          throw Exception(error[0]);
        } else {
          throw Exception("Can't Post Review");
        }
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> getCustomerInfo(String? id) async {
    try {
      var res = await httpGet(
          '$domain/index.php?route=extension/mstore/account/addresses'.toUri()!,
          headers: {'cookie': cookie!});

      final body = convert.jsonDecode(res.body);
      List? error = body['error'];
      if (error != null && error.isNotEmpty) {
        throw Exception(error[0]);
      } else if (List.from(body['data']).isNotEmpty) {
        return {'billing': Address.fromOpencartJson(body['data'][0])};
      } else {
        throw Exception('No Address');
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  @override
  Future<Order?> cancelOrder({Order? order, String? userCookie}) async {
    // Does not effect online because not implement
    await updateOrder(order!.id, status: 'cancelled', token: userCookie);
    //order.status = OrderStatus.canceled;
    order.status = OrderStatus.cancelled;
    return order;
  }

// @override
// Future<PagingResponse<Blog>> getBlogs(dynamic cursor) async {
//   try {
//     final param =
//         '_embed&page=$cursor${kAdvanceConfig.alwaysRefreshBlog ? '&dummy=${DateTime.now().millisecondsSinceEpoch}' : ''}';
//     // if (categories != null) {
//     //   param += '&categories=$categories';
//     // }
//     final response =
//         await http.get('${blogApi!.url}/wp-json/wp/v2/posts?$param'.toUri()!);
//
//     if (response.statusCode != 200) {
//       return const PagingResponse();
//     }
//
//     List data = convert.jsonDecode(response.body);
//
//     return PagingResponse(data: data.map((e) => Blog.fromJson(e)).toList());
//   } on Exception catch (_) {
//     return const PagingResponse();
//   }
// }
}
