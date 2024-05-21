class NotEnoughBalanceException implements Exception {}

class CouponValueNotFoundException implements Exception {}

class LoyaltyException implements Exception {}

class LoyaltyNoAddressException extends LoyaltyException {}

class LoyaltyNoPhoneException extends LoyaltyException {}

class WebFailureException extends LoyaltyException {}

class ErrorUpdateAddressException extends LoyaltyException {}
