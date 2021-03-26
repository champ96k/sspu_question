import 'package:freezed_annotation/freezed_annotation.dart';
part 'subjects.freezed.dart';
part 'subjects.g.dart';

@freezed
abstract class Subjects with _$Subjects {
  factory Subjects(
    String questionPaperURL,
    String other,
    String subjectName,
  ) = _Subjects;

  factory Subjects.fromJson(Map<String, dynamic> json) =>
      _$SubjectsFromJson(json);
}
