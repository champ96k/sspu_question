import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sspu_question/features/home/data/models/model.dart';

part 'question_bank.freezed.dart';
part 'question_bank.g.dart';

@freezed
abstract class QuestionBank with _$QuestionBank {
  factory QuestionBank(
    List<Branches> branches
  ) = _QuestionBank;
	
  factory QuestionBank.fromJson(Map<String, dynamic> json) =>
			_$QuestionBankFromJson(json);
}
