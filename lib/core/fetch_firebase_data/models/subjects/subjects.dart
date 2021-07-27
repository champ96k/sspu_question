import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'subjects.freezed.dart';
part 'subjects.g.dart';

@freezed
class Subjects with _$Subjects {
  factory Subjects(
    String? subjectName,
    List<QuestionPapers?>? questionPapers,
  ) = _Subjects;

  factory Subjects.fromJson(Map<String, dynamic> json) =>
      _$SubjectsFromJson(json);
}
