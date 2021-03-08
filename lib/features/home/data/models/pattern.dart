import 'package:sspu_question/features/home/data/models/model.dart';

class ExamPattern {
    ExamPattern({
        this.patternName,
        this.subjects,
    });

    String patternName;
    List<Subjects> subjects;

    factory ExamPattern.fromJson(Map<String, dynamic> json) => ExamPattern(
        patternName: json["patternName"],
        subjects: List<Subjects>.from(json["subjects"].map((x) => Subjects.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "patternName": patternName,
        "subjects": List<dynamic>.from(subjects.map((x) => x.toJson())),
    };
}