// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semester.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Semester _$_$_SemesterFromJson(Map<String, dynamic> json) {
  return _$_Semester(
    json['semesterName'] as String,
    (json['examPattern'] as List)
        ?.map((e) =>
            e == null ? null : ExamPattern.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SemesterToJson(_$_Semester instance) =>
    <String, dynamic>{
      'semesterName': instance.semesterName,
      'examPattern': instance.examPattern,
    };
