import 'package:flutter/material.dart';

import 'loyalty_api.dart';

enum UpdateAddressStates {
  initial,
  loading,
  success,
  errorWebAccess,
  errorUpdateAddress,
}

class AddressUpdateNotifier extends ChangeNotifier {
  UpdateAddressStates updateState =
      UpdateAddressStates.initial; // Initial state for address update

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
      updateState = UpdateAddressStates.loading;
      notifyListeners();
      await LoyaltyWebService.instance.updateAddress(
          id, firstName, lastName, country, city, street1, street2, telephone);
      updateState = UpdateAddressStates.success;
    } catch (exception) {
      if (exception is WebFailureException) {
        updateState = UpdateAddressStates.errorWebAccess;
      } else if (exception is ErrorUpdateAddressException) {
        updateState = UpdateAddressStates.errorUpdateAddress;
      } else {
        updateState =
            UpdateAddressStates.errorUpdateAddress; // General error state
      }
    } finally {
      notifyListeners();
    }
  }
}
