import '../models.dart';

class Subjects {
  String? subjectName;
  List<QuestionPapers?>? questionPapers;

  Subjects({
    this.subjectName,
    this.questionPapers,
  });

  Subjects.fromJson(Map<String, dynamic> json) {
    subjectName = json['subjectName'];
    if (json['QuestionPapers'] != null) {
      questionPapers = <QuestionPapers>[];
      json['QuestionPapers'].forEach((v) {
        questionPapers!.add(QuestionPapers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['subjectName'] = subjectName;
    if (questionPapers != null) {
      data['QuestionPapers'] = questionPapers!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}
