// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionBank _$_$_QuestionBankFromJson(Map<String, dynamic> json) {
  return _$_QuestionBank(
    (json['branches'] as List)
        ?.map((e) =>
            e == null ? null : Branches.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_QuestionBankToJson(_$_QuestionBank instance) =>
    <String, dynamic>{
      'branches': instance.branches,
    };
