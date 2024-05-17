import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserStorePoints extends StatelessWidget {
  final String documentId;
  const UserStorePoints({super.key, required this.documentId});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance
          .collection('LoyaltyUsers')
          .doc(documentId)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var data = snapshot.data;
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            data?['StorePoints'].toString() ?? '',
            style: const TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
