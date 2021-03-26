import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sspu_question/core/models/model.dart';
part 'semester.freezed.dart';
part 'semester.g.dart';

@freezed
abstract class Semester with _$Semester {
  factory Semester(
    String semesterName,
  List<ExamPattern> examPattern,
  ) = _Semester;
	
  factory Semester.fromJson(Map<String, dynamic> json) =>
			_$SemesterFromJson(json);
}
