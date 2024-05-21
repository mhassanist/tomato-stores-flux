import 'loyalty_exceptions.dart';

class ErrorManager {
  static final Map<Type, String> errorMessages = {
    NotEnoughBalanceException: 'Not Enough Balance',
    CouponValueNotFoundException:
        'Coupon Value Not Found. Check System Configurations',
    LoyaltyNoAddressException: 'No Address Found. Please Update Your Address',
    LoyaltyNoPhoneException:
        'No Phone Number Found. Please Update Your Phone Number',
    WebFailureException: 'Web Service Failure. Please Try Again Later',
    ErrorUpdateAddressException:
        'Error Updating Address. Please Contact Support',
  };

  static String mapExceptionToErrorMessage(Exception e) {
    return errorMessages[e.runtimeType] ?? 'General Error';
  }
}
