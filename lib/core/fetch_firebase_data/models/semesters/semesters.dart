import '../models.dart';

class Semesters {
  String? semesterName;
  List<Subjects?>? subjects;

  Semesters({
    this.semesterName,
    this.subjects,
  });

  Semesters.fromJson(Map<String, dynamic> json) {
    semesterName = json['semesterName'];
    if (json['subjects'] != null) {
      subjects = <Subjects>[];
      json['subjects'].forEach((v) {
        subjects!.add(Subjects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['semesterName'] = semesterName;
    if (subjects != null) {
      data['subjects'] = subjects!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}
