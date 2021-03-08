import 'package:sspu_question/features/home/data/models/model.dart';

class Semester {
    Semester({
        this.semesterName,
        this.examPattern,
    });

    String semesterName;
    List<ExamPattern> examPattern;

    factory Semester.fromJson(Map<String, dynamic> json) => Semester(
        semesterName: json["semesterName"],
        examPattern: List<ExamPattern>.from(json["examPattern"].map((x) => ExamPattern.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "semesterName": semesterName,
        "examPattern": List<dynamic>.from(examPattern.map((x) => x.toJson())),
    };
}
