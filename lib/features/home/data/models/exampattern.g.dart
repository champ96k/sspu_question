// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exampattern.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExamPattern _$_$_ExamPatternFromJson(Map<String, dynamic> json) {
  return _$_ExamPattern(
    json['patternName'] as String,
    (json['subjects'] as List)
        ?.map((e) =>
            e == null ? null : Subjects.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ExamPatternToJson(_$_ExamPattern instance) =>
    <String, dynamic>{
      'patternName': instance.patternName,
      'subjects': instance.subjects,
    };
