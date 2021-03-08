
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sspu_question/features/home/data/models/model.dart';

part 'exampattern.freezed.dart';
part 'exampattern.g.dart';

@freezed
abstract class ExamPattern with _$ExamPattern {
  factory ExamPattern(
    String patternName,
  List<Subjects> subjects,
  ) = _ExamPattern;
	
  factory ExamPattern.fromJson(Map<String, dynamic> json) =>
			_$ExamPatternFromJson(json);
}
