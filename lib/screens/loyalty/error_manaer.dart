import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'loyalty_exceptions.dart';

class ErrorManager {
  static String getTranslatedErrorMessage(BuildContext context, s) {
    var errorMessages = {
      NotEnoughBalanceException: S.of(context).NotEnoughBalanceException,
      CouponValueNotFoundException: S.of(context).CouponValueNotFoundException,
      LoyaltyNoAddressException: S.of(context).LoyaltyNoAddressException,
      LoyaltyNoPhoneException: S.of(context).LoyaltyNoPhoneException,
      WebFailureException: S.of(context).WebFailureException,
      ErrorUpdateAddressException: S.of(context).ErrorUpdateAddressException,
    };
    if (errorMessages.keys.contains(s)) {
      return errorMessages[s]!;
    } else {
      return S.of(context).UnknownError;
    }
  }

  static String mapExceptionToErrorMessage(BuildContext context, Exception e) {
    return getTranslatedErrorMessage(context, e.runtimeType);
  }
}
