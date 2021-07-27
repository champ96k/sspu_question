// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerInfo _$_$_BannerInfoFromJson(Map<String, dynamic> json) {
  return _$_BannerInfo(
    json['bannerName'] as String?,
    json['bannertype'] as String?,
    json['url'] as String?,
    json['thumbnailImage'] as String?,
    json['screenName'] as String?,
    json['isActive'] as bool,
    json['tapAction'] == null
        ? null
        : TapAction.fromJson(json['tapAction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BannerInfoToJson(_$_BannerInfo instance) =>
    <String, dynamic>{
      'bannerName': instance.bannerName,
      'bannertype': instance.bannertype,
      'url': instance.url,
      'thumbnailImage': instance.thumbnailImage,
      'screenName': instance.screenName,
      'isActive': instance.isActive,
      'tapAction': instance.tapAction,
    };
