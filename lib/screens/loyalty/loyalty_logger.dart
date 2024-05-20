import 'package:cloud_firestore/cloud_firestore.dart';

class LoyaltyLogger {
  static final LoyaltyLogger _instance = LoyaltyLogger._internal();
  factory LoyaltyLogger() => _instance;

  LoyaltyLogger._internal();

  final CollectionReference _logCollection =
      FirebaseFirestore.instance.collection('LoyaltyLogs');
  Future<void> clearLogs() async {
    try {
      final QuerySnapshot querySnapshot = await _logCollection.get();
      for (final QueryDocumentSnapshot doc in querySnapshot.docs) {
        await doc.reference.delete();
      }
      print('All logs cleared successfully');
    } catch (e) {
      print('Error clearing logs: $e');
    }
  }
  Future<void> logEvent(String message) async {
    try {
      await _logCollection.add({
        'message': message,
        'timestamp': FieldValue.serverTimestamp(),
      });
      print('Log added successfully');
    } catch (e) {
      print('Error adding log: $e');
    }
  }
}
