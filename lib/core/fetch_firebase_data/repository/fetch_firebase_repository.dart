import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core.dart';

class FetchFirebaseRepository {
  /// Create a CollectionReference called `question_bank_collection`
  /// that references the firestore collection
  final CollectionReference _branchesCollection =
      FirebaseFirestore.instance.collection(
    Constants.questionBankCollectionName,
  );

  //read data from Firebase
  Future<List<QuestionBankModel>> fetchFirebaseData() async {
    final QuerySnapshot<Map<String, dynamic>> _querySnapshot =
        await _branchesCollection
            .doc(Constants.questionBankDocsnName)
            .collection(Constants.questionBankCollectionName)
            .get();

    final _branches = await _querySnapshot.docs
        .map((e) => QuestionBankModel.fromJson(e.data()));
    return _branches.toList();
  }
}
