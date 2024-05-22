import 'dart:math';

class VoucherGenerator {
  static final Random _random = Random();

  // Generate a random 10-digit number as a string
  static String generateRandomCode() {
    return List.generate(10, (_) => _random.nextInt(10)).join();
  }
}
