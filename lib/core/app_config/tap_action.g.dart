// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tap_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TapAction _$_$_TapActionFromJson(Map<String, dynamic> json) {
  return _$_TapAction(
    json['action'] as String?,
    json['route'] as String?,
    (json['params'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String?),
    ),
  );
}

Map<String, dynamic> _$_$_TapActionToJson(_$_TapAction instance) =>
    <String, dynamic>{
      'action': instance.action,
      'route': instance.route,
      'params': instance.params,
    };
