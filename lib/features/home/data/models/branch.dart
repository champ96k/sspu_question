import 'package:sspu_question/features/home/data/models/model.dart';

class Branch {
    Branch({
        this.branchName,
        this.semester,
    });

    String branchName;
    List<Semester> semester;

    factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        branchName: json["branchName"],
        semester: List<Semester>.from(json["semester"].map((x) => Semester.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "branchName": branchName,
        "semester": List<dynamic>.from(semester.map((x) => x.toJson())),
    };
}