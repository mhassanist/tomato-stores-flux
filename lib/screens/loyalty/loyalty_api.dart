import 'dart:async';
import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flux_firebase/index.dart';
import 'package:http/http.dart';

import '../../data/boxes.dart';
import 'loyalty_constants.dart';
import 'loyalty_exceptions.dart';
import 'loyalty_logger.dart';
import 'vouvher_generator.dart';

//Singleton Loyalty API Calls Class
class LoyaltyWebService {
  Future<num> getUserPoints(phone, name, email) async {
    var doc = await FirebaseFirestore.instance
        .collection('LoyaltyUsers')
        .doc(phone)
        .get();

    if (doc.exists) {
      await LoyaltyLogger().logEvent('User $phone found .. returning points');
      return doc['StorePoints'];
    } else {
      await LoyaltyLogger()
          .logEvent('User $phone NOT found .. creating + points');
      //create user and return points
      await FirebaseFirestore.instance
          .collection('LoyaltyUsers')
          .doc(phone)
          .set({
        'CreatedAt': DateTime.now(),
        'Name': name,
        'Email': email,
        'OnlinePoints': 0,
        'StorePoints': 0,
        'RedeemedPoints': 0
      });
      return 0.0;
    }
  }

  Future<void> sendVoucherCode(String phoneNumber, String voucherCode,
      voucherValue, String language) async {
    HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('sendVoucherCodeTomato');
    try {
      var lang = SettingsBox().languageCode;
      if (lang != null) {
        if (lang.toLowerCase() == 'en') {
          language = 'e';
        } else {
          language = 'a';
        }
      }

      final HttpsCallableResult result = await callable.call(<String, dynamic>{
        'phoneNumber': '2$phoneNumber',
        'voucherCode': voucherCode,
        'voucherValue': voucherValue,
        'language': language,
      });
      print('Function result: ${result.data}');
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<String> getUserPhone(String email) async {
    return await get(
      Uri.parse('${LoyaltyConstants.getCustomerUrl}?'
          'searchCriteria[filter_groups][0][filters][0][field]=email'
          '&searchCriteria[filter_groups][0][filters][0][value]=$email'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${LoyaltyConstants.magentoAccessToken}'
        // Accessing accessToken from the Singleton instance
      },
    ).then((response) {
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        List items = responseData['items'];
        if (items.isEmpty) {
          throw LoyaltyNoAddressException();
        }
        List addresses = items[0]['addresses'];
        if (addresses.isEmpty) {
          throw LoyaltyNoAddressException();
        }
        var telephone = items[0]['addresses'][0]['telephone'];
        if (telephone == null) {
          throw LoyaltyNoPhoneException();
        } else if (telephone.toString().isEmpty) {
          throw LoyaltyNoPhoneException();
        } else {
          return telephone;
        }
      } else {
        throw WebFailureException();
      }
    }).catchError((error) {
      throw error;
    });
  } //End of UserPhone Call

  Future<Null> updateAddress(id, firstName, lastName, country, city, street1,
      street2, telephone) async {
    return await put(
      Uri.parse(LoyaltyConstants.updateCustomerUrl + id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer ${LoyaltyConstants.magentoAccessToken}'
        // Accessing accessToken from the Singleton instance
      },
      body: jsonEncode(<String, dynamic>{
        "customer": {
          "addresses": [
            {
              "firstname": firstName,
              "lastname": lastName,
              "street": [street1, street2],
              "city": city,
              "country_id": "EG",
              "telephone": telephone,
              "default_billing": true,
              "default_shipping": true
            }
          ]
        }
      }),
    ).then((response) {
      if (response.statusCode == 200) {
        // If server returns an OK response, parse the JSON.
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');
      } else {
        // If the response was not OK, throw an error.
        print('Request failed with status: ${response.statusCode}.');
      }
    }).onError((error, stackTrace) {
      throw Error();
    });
  }

  Future<void> createVoucher(int points, String customerPhone) async {
    //get user info
    var doc = await FirebaseFirestore.instance
        .collection('LoyaltyUsers')
        .doc(customerPhone)
        .get();
    var storePoints = doc.data()!['StorePoints'];

    if (storePoints < points) {
      throw NotEnoughBalanceException();
    }

    //get point-to-egp redeem value
    var remoteConfig = FirebaseRemoteConfig.instance;
    var cpv = remoteConfig.getDouble('CPV');

    if (cpv == 0) {
      throw CouponValueNotFoundException();
    }

    //update points - deduct coupon value
    await FirebaseFirestore.instance
        .collection('LoyaltyUsers')
        .doc(customerPhone)
        .update({'StorePoints': storePoints - points});

    var voucherIdExists = true;
    var voucherId = VoucherGenerator.generateRandomCode();
    while (voucherIdExists) {
      voucherIdExists = (await FirebaseFirestore.instance
              .collection('Vouchers')
              .doc(voucherId)
              .get())
          .exists;
      voucherId = VoucherGenerator.generateRandomCode();
    }
    var voucherValue = points * cpv;

    //create the voucher
    await FirebaseFirestore.instance.collection('Vouchers').doc(voucherId).set({
      'CustomerID': customerPhone,
      'CreatedAt': DateTime.now(),
      'ExpirationDate': DateTime.now().add(const Duration(days: 30)),
      'Points': points,
      'Value': voucherValue,
      'RedeemedAt': null,
      'RedeemedOn': null,
      'InvNo': 0,
      'IsUsed': 0,
    }).then((_) {});

    await sendVoucherCode(customerPhone, voucherId, voucherValue, 'e');
  }

  // Private constructor
  LoyaltyWebService._();

  // Singleton instance variable
  static final LoyaltyWebService _instance = LoyaltyWebService._();

  // Access token

  // Getter to access the Singleton instance
  static LoyaltyWebService get instance => _instance;
}
