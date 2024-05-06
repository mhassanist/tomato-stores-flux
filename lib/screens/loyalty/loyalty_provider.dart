import 'package:flutter/material.dart';

import 'loyalty_services.dart';

enum LoyaltyPageStates { waiting, fetched, errorNoAddress, initial }

class LoyaltyProvider extends ChangeNotifier {
  String _userPhone = '';

  LoyaltyPageStates connectionState =
      LoyaltyPageStates.waiting; // Initial state for user phone

  // Getter for user phone
  String get userPhone => _userPhone;

  // Method to fetch user phone and update state
  Future<void> fetchUserPhone(String email) async {
    try {
      dynamic result = await LoyaltyWebService.instance.getUserPhone(email);
      _userPhone = result.toString();
      connectionState = LoyaltyPageStates.fetched;
      notifyListeners();
    } catch (error) {
      print('Error fetching user phone: $error');
      connectionState = LoyaltyPageStates.errorNoAddress;
      notifyListeners();
    }
  }
}
