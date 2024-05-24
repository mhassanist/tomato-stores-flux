import 'package:flutter/material.dart';

import 'loyalty_api.dart';
import 'loyalty_exceptions.dart';

enum AddressUpdateStates {
  initial,
  loading,
  success,
  errorWebAccess,
  errorUpdateAddress,
}

class AddressUpdateNotifier extends ChangeNotifier {
  AddressUpdateStates updateState = AddressUpdateStates.initial;

  bool _disposed = false; // Initial state for address update

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  // Method to update user address and manage state changes
  Future<void> updateAddress(
      String id,
      String firstName,
      String lastName,
      String country,
      String city,
      String street1,
      String street2,
      String telephone) async {
    try {
      updateState = AddressUpdateStates.loading;
      notifyListeners();

      await LoyaltyWebService.instance.updateAddress(
          id, firstName, lastName, country, city, street1, street2, telephone);

      updateState = AddressUpdateStates.success;
    } catch (exception) {
      if (exception is WebFailureException) {
        updateState = AddressUpdateStates.errorWebAccess;
      } else if (exception is ErrorUpdateAddressException) {
        updateState = AddressUpdateStates.errorUpdateAddress;
      } else {
        updateState =
            AddressUpdateStates.errorUpdateAddress; // General error state
      }
    } finally {
      notifyListeners();
    }
  }
}
