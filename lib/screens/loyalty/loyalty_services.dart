import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

class LoyaltyConstants {
  static const String getCustomerUrl =
      'https://www.tomatostores.com/index.php/rest/V1/customers/search';
  static const String updateCustomerUrl =
      'https://www.tomatostores.com/index.php/rest/V1/customers/';

  static String accessToken = 'hdn4j1etbzgrizqlk67k8lsylpkyundd';
}

//Singleton Loyalty API Calls Class
class LoyaltyWebService {
  Future<FutureOr> getUserPhone(String email) async {
    return await get(
      Uri.parse('${LoyaltyConstants.getCustomerUrl}?'
          'searchCriteria[filter_groups][0][filters][0][field]=email'
          '&searchCriteria[filter_groups][0][filters][0][value]=$email'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${LoyaltyConstants.accessToken}'
        // Accessing accessToken from the Singleton instance
      },
    ).then(onValue).catchError(onError);
  }

  Future<FutureOr> onValue(Response response) async {
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      List items = responseData['items'];
      if (items.isEmpty) {
        throw LoyaltyNoAddressException();
      }
      var telephone = items[0]['addresses'][0]['telephone'];
      if (telephone == null) {
        throw LoyaltyNoPhoneException();
      }
      return telephone;
    } else {
      onError("Can't Access the Web!");
    }
  }

  Future<FutureOr> onError(error) async {
    return error;
  }

  // Private constructor
  LoyaltyWebService._();

  // Singleton instance variable
  static final LoyaltyWebService _instance = LoyaltyWebService._();

  // Access token

  // Getter to access the Singleton instance
  static LoyaltyWebService get instance => _instance;
}

class LoyaltyException extends Error {}

class LoyaltyNoAddressException extends LoyaltyException {}

class LoyaltyNoPhoneException extends LoyaltyException {}
