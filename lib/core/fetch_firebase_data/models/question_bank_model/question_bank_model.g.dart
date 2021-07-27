// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionBankModel _$_$_QuestionBankModelFromJson(Map<String, dynamic> json) {
  return _$_QuestionBankModel(
    json['showBanners'] as bool,
    (json['bannerInfo'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : BannerInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['branches'] as List<dynamic>?)
        ?.map((e) =>
            e == null ? null : Branches.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_QuestionBankModelToJson(
        _$_QuestionBankModel instance) =>
    <String, dynamic>{
      'showBanners': instance.showBanners,
      'bannerInfo': instance.bannerInfo,
      'branches': instance.branches,
    };
