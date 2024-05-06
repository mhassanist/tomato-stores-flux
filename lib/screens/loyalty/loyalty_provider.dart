import 'package:flutter/material.dart';

import 'loyalty_services.dart';

class LoyaltyProvider extends ChangeNotifier {
  String _userPhone = '';

  late ConnectionState connectionState; // Initial state for user phone

  // Getter for user phone
  String get userPhone => _userPhone;

  // Method to fetch user phone and update state
  Future<void> fetchUserPhone(String email) async {
    try {
      connectionState = ConnectionState.waiting;
      notifyListeners();

      dynamic result = await LoyaltyWebService.instance.getUserPhone(email);

      _userPhone = result.toString();
      connectionState = ConnectionState.done;
      notifyListeners();
    } catch (error) {
      print('Error fetching user phone: $error');
    }
  }
}
