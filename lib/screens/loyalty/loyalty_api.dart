import 'dart:async';
import 'dart:convert';

import 'package:flux_firebase/index.dart';
import 'package:http/http.dart';

import 'loyalty_logger.dart';

class LoyaltyConstants {
  static const String getCustomerUrl =
      'https://www.tomatostores.com/index.php/rest/V1/customers/search';
  static const String updateCustomerUrl =
      'https://www.tomatostores.com/index.php/rest/V1/customers/';

  static String magentoAccessToken = 'hdn4j1etbzgrizqlk67k8lsylpkyundd';
}

//Singleton Loyalty API Calls Class
class LoyaltyWebService {
  Future<String> getUserPoints(phone, name, email) async {
    var doc = await FirebaseFirestore.instance
        .collection('LoyaltyUsers')
        .doc(phone)
        .get();

    if (doc.exists) {
      await LoyaltyLogger().logEvent('User $phone found .. returning points');
      return (double.parse(doc['StorePoints'].toString()) -
              double.parse(doc['RedeemedPoints'].toString()))
          .toString();
    } else {
      await LoyaltyLogger()
          .logEvent('User $phone NOT found .. creating + points');
      //create user and return points
      await FirebaseFirestore.instance
          .collection('LoyaltyUsers')
          .doc(phone)
          .set({
        'Name': name,
        'Email': email,
        'OnlinePoints': 0,
        'StorePoints': 0,
        'RedeemedPoints': 0
      });
      return '0';
    }
  }

  Future<FutureOr> getUserPhone(String email) async {
    return await get(
      Uri.parse('${LoyaltyConstants.getCustomerUrl}?'
          'searchCriteria[filter_groups][0][filters][0][field]=email'
          '&searchCriteria[filter_groups][0][filters][0][value]=$email'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${LoyaltyConstants.magentoAccessToken}'
        // Accessing accessToken from the Singleton instance
      },
    ).then(onValue).catchError(onError);
  } //End of UserPhone Call

  Future<FutureOr> updateAddress(id, firstName, lastName, country, city,
      street1, street2, telephone) async {
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

  Future<FutureOr> onValue(Response response) async {
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
  }

  Future<FutureOr> onError(error) async {
    throw error;
  }

  // Private constructor
  LoyaltyWebService._();

  // Singleton instance variable
  static final LoyaltyWebService _instance = LoyaltyWebService._();

  // Access token

  // Getter to access the Singleton instance
  static LoyaltyWebService get instance => _instance;
}

class LoyaltyException implements Exception {}

class LoyaltyNoAddressException extends LoyaltyException {}

class LoyaltyNoPhoneException extends LoyaltyException {}

class WebFailureException extends LoyaltyException {}

class ErrorUpdateAddressException extends LoyaltyException {}
