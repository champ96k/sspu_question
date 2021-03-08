import 'package:sspu_question/features/home/data/models/model.dart';

class Subjects {
    Subjects({
        this.questionPaperUrl,
        this.other,
        this.subjectName,
    });

    QuestionPaperUrl questionPaperUrl;
    Other other;
    SubjectName subjectName;

    factory Subjects.fromJson(Map<String, dynamic> json) => Subjects(
        questionPaperUrl: questionPaperUrlValues.map[json["questionPaperURL"]],
        other: otherValues.map[json["other"]],
        subjectName: subjectNameValues.map[json["subjectName"]],
    );

    Map<String, dynamic> toJson() => {
        "questionPaperURL": questionPaperUrlValues.reverse[questionPaperUrl],
        "other": otherValues.reverse[other],
        "subjectName": subjectNameValues.reverse[subjectName],
    };
}