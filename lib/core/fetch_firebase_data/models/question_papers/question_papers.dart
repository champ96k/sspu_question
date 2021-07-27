import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_papers.freezed.dart';
part 'question_papers.g.dart';

@freezed
class QuestionPapers with _$QuestionPapers {
  factory QuestionPapers(
    String? paperNmae,
    String? patternName,
    String? downloadURL,
  ) = _QuestionPapers;

  factory QuestionPapers.fromJson(Map<String, dynamic> json) =>
      _$QuestionPapersFromJson(json);
}
