import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  final CollectionReference meetingCollection =
      FirebaseFirestore.instance.collection('feedback');

  Future<DocumentReference> sentFeedback(String requestMeetingModel) {
    try {
      return meetingCollection.add(
        {
          "feedback": requestMeetingModel,
        },
      );
    } catch (e) {
      throw Exception("Something went wrong");
    }
  }
}
