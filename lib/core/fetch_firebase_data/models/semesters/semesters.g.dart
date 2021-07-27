// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semesters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Semesters _$_$_SemestersFromJson(Map<String, dynamic> json) {
  return _$_Semesters(
    json['semesterName'] as String?,
    (json['subjects'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : Subjects.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SemestersToJson(_$_Semesters instance) =>
    <String, dynamic>{
      'semesterName': instance.semesterName,
      'subjects': instance.subjects,
    };
