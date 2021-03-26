// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Branches _$_$_BranchesFromJson(Map<String, dynamic> json) {
  return _$_Branches(
    json['branchName'] as String,
    (json['semester'] as List)
        ?.map((e) =>
            e == null ? null : Semester.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_BranchesToJson(_$_Branches instance) =>
    <String, dynamic>{
      'branchName': instance.branchName,
      'semester': instance.semester,
    };
