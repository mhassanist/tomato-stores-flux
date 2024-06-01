import 'package:flutter/material.dart';

import 'loyalty_api.dart';
import 'loyalty_exceptions.dart';

enum LoyaltyPageStates {
  initial,
  loading,
  fetched,
  errorNoAddress,
  errorNoPhone,
  errorWebAccess,
}

class LoyaltyModelNotifier extends ChangeNotifier {
  String? _userPhone;
  int? _userPoints;
  String? _exception;

  LoyaltyPageStates fetchState =
      LoyaltyPageStates.initial; // Initial state for user phone

  String? get userPhone => _userPhone;
  int? get userPoints => _userPoints;

  String? get error => _exception;

  Future<void> fetchUserPoints(String name, String email) async {
    try {
      fetchState = LoyaltyPageStates.loading;
      notifyListeners();

      dynamic result = await LoyaltyWebService.instance.getUserPhone(email);
      _userPhone = result.toString();
      _userPoints = await LoyaltyWebService.instance
          .getUserPoints(_userPhone, name, email);

      fetchState = LoyaltyPageStates.fetched;
      notifyListeners();
    } catch (exception) {
      if (exception is LoyaltyNoPhoneException) {
        fetchState = LoyaltyPageStates.errorNoPhone;
      } else if (exception is LoyaltyNoAddressException) {
        fetchState = LoyaltyPageStates.errorNoAddress;
      } else if (exception is LoyaltyWebService) {
        fetchState = LoyaltyPageStates.errorWebAccess;
      } else {
        _exception = exception.toString();
        fetchState = LoyaltyPageStates.errorWebAccess;
      }
      notifyListeners();
    }
  }

  Future<void> redeemUserPoints(String name, String email, points) async {
    try {
      // Method to fetch user phone and update state
      fetchState = LoyaltyPageStates.loading;
      notifyListeners();
      dynamic result = await LoyaltyWebService.instance.getUserPhone(email);
      _userPhone = result.toString();
      // _userPoints = await LoyaltyWebService.instance
      //     .redeemUserPoints(_userPhone, name, email, points);
      fetchState = LoyaltyPageStates.fetched;
      notifyListeners();
    } catch (exception) {
      if (exception is LoyaltyNoPhoneException) {
        fetchState = LoyaltyPageStates.errorNoPhone;
      } else if (exception is LoyaltyNoAddressException) {
        fetchState = LoyaltyPageStates.errorNoAddress;
      } else if (exception is LoyaltyWebService) {
        fetchState = LoyaltyPageStates.errorWebAccess;
      }
      notifyListeners();
    }
  }
}
