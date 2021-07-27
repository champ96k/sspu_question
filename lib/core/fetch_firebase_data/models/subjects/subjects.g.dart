// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subjects _$_$_SubjectsFromJson(Map<String, dynamic> json) {
  return _$_Subjects(
    json['subjectName'] as String?,
    (json['questionPapers'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QuestionPapers.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SubjectsToJson(_$_Subjects instance) =>
    <String, dynamic>{
      'subjectName': instance.subjectName,
      'questionPapers': instance.questionPapers,
    };
