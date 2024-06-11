import 'package:cloud_firestore/cloud_firestore.dart';

String timestampToDateString(Timestamp timestamp) {
  if (timestamp == null) return '';
  DateTime date = timestamp.toDate();
  return '${date.day}-${date.month}-${date.year}';
}
