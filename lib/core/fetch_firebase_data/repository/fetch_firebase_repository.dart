import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core.dart';

class FetchFirebaseRepository {
  final DocumentReference<Map<String, dynamic>> _documentReference =
      FirebaseFirestore.instance
          .collection(Constants.questionBankCollectionName)
          .doc(Constants.questionBankDocsnName);

  //read data from Firebase
  Future<QuestionBankModel> fetchFirebaseData() async =>
      await _documentReference.get().then(
        (querySnapshot) {
          try {
            final result = querySnapshot.data();
            final QuestionBankModel _models =
                QuestionBankModel.fromJson(result as Map<String, dynamic>);
            return _models;
          } catch (e) {
            log(e.toString());
            throw Exception("Something went wrong");
          }
        },
      );
}
