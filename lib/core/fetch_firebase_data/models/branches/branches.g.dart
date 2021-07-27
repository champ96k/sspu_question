// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Branches _$_$_BranchesFromJson(Map<String, dynamic> json) {
  return _$_Branches(
    json['branchName'] as String?,
    json['branchThumbnail'] as String?,
    json['backgroundColor'] as String?,
    (json['semesters'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : Semesters.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_BranchesToJson(_$_Branches instance) =>
    <String, dynamic>{
      'branchName': instance.branchName,
      'branchThumbnail': instance.branchThumbnail,
      'backgroundColor': instance.backgroundColor,
      'semesters': instance.semesters,
    };
