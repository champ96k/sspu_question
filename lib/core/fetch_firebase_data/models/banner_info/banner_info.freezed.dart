// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banner_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerInfo _$BannerInfoFromJson(Map<String, dynamic> json) {
  return _BannerInfo.fromJson(json);
}

/// @nodoc
class _$BannerInfoTearOff {
  const _$BannerInfoTearOff();

  _BannerInfo call(
      String? bannerName,
      String? bannertype,
      String? url,
      String? thumbnailImage,
      String? screenName,
      bool isActive,
      TapAction? tapAction) {
    return _BannerInfo(
      bannerName,
      bannertype,
      url,
      thumbnailImage,
      screenName,
      isActive,
      tapAction,
    );
  }

  BannerInfo fromJson(Map<String, Object> json) {
    return BannerInfo.fromJson(json);
  }
}

/// @nodoc
const $BannerInfo = _$BannerInfoTearOff();

/// @nodoc
mixin _$BannerInfo {
  String? get bannerName => throw _privateConstructorUsedError;
  String? get bannertype => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get thumbnailImage => throw _privateConstructorUsedError;
  String? get screenName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  TapAction? get tapAction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerInfoCopyWith<BannerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerInfoCopyWith<$Res> {
  factory $BannerInfoCopyWith(
          BannerInfo value, $Res Function(BannerInfo) then) =
      _$BannerInfoCopyWithImpl<$Res>;
  $Res call(
      {String? bannerName,
      String? bannertype,
      String? url,
      String? thumbnailImage,
      String? screenName,
      bool isActive,
      TapAction? tapAction});

  $TapActionCopyWith<$Res>? get tapAction;
}

/// @nodoc
class _$BannerInfoCopyWithImpl<$Res> implements $BannerInfoCopyWith<$Res> {
  _$BannerInfoCopyWithImpl(this._value, this._then);

  final BannerInfo _value;
  // ignore: unused_field
  final $Res Function(BannerInfo) _then;

  @override
  $Res call({
    Object? bannerName = freezed,
    Object? bannertype = freezed,
    Object? url = freezed,
    Object? thumbnailImage = freezed,
    Object? screenName = freezed,
    Object? isActive = freezed,
    Object? tapAction = freezed,
  }) {
    return _then(_value.copyWith(
      bannerName: bannerName == freezed
          ? _value.bannerName
          : bannerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bannertype: bannertype == freezed
          ? _value.bannertype
          : bannertype // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailImage: thumbnailImage == freezed
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String?,
      screenName: screenName == freezed
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tapAction: tapAction == freezed
          ? _value.tapAction
          : tapAction // ignore: cast_nullable_to_non_nullable
              as TapAction?,
    ));
  }

  @override
  $TapActionCopyWith<$Res>? get tapAction {
    if (_value.tapAction == null) {
      return null;
    }

    return $TapActionCopyWith<$Res>(_value.tapAction!, (value) {
      return _then(_value.copyWith(tapAction: value));
    });
  }
}

/// @nodoc
abstract class _$BannerInfoCopyWith<$Res> implements $BannerInfoCopyWith<$Res> {
  factory _$BannerInfoCopyWith(
          _BannerInfo value, $Res Function(_BannerInfo) then) =
      __$BannerInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? bannerName,
      String? bannertype,
      String? url,
      String? thumbnailImage,
      String? screenName,
      bool isActive,
      TapAction? tapAction});

  @override
  $TapActionCopyWith<$Res>? get tapAction;
}

/// @nodoc
class __$BannerInfoCopyWithImpl<$Res> extends _$BannerInfoCopyWithImpl<$Res>
    implements _$BannerInfoCopyWith<$Res> {
  __$BannerInfoCopyWithImpl(
      _BannerInfo _value, $Res Function(_BannerInfo) _then)
      : super(_value, (v) => _then(v as _BannerInfo));

  @override
  _BannerInfo get _value => super._value as _BannerInfo;

  @override
  $Res call({
    Object? bannerName = freezed,
    Object? bannertype = freezed,
    Object? url = freezed,
    Object? thumbnailImage = freezed,
    Object? screenName = freezed,
    Object? isActive = freezed,
    Object? tapAction = freezed,
  }) {
    return _then(_BannerInfo(
      bannerName == freezed
          ? _value.bannerName
          : bannerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bannertype == freezed
          ? _value.bannertype
          : bannertype // ignore: cast_nullable_to_non_nullable
              as String?,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailImage == freezed
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String?,
      screenName == freezed
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tapAction == freezed
          ? _value.tapAction
          : tapAction // ignore: cast_nullable_to_non_nullable
              as TapAction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerInfo implements _BannerInfo {
  _$_BannerInfo(this.bannerName, this.bannertype, this.url, this.thumbnailImage,
      this.screenName, this.isActive, this.tapAction);

  factory _$_BannerInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerInfoFromJson(json);

  @override
  final String? bannerName;
  @override
  final String? bannertype;
  @override
  final String? url;
  @override
  final String? thumbnailImage;
  @override
  final String? screenName;
  @override
  final bool isActive;
  @override
  final TapAction? tapAction;

  @override
  String toString() {
    return 'BannerInfo(bannerName: $bannerName, bannertype: $bannertype, url: $url, thumbnailImage: $thumbnailImage, screenName: $screenName, isActive: $isActive, tapAction: $tapAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannerInfo &&
            (identical(other.bannerName, bannerName) ||
                const DeepCollectionEquality()
                    .equals(other.bannerName, bannerName)) &&
            (identical(other.bannertype, bannertype) ||
                const DeepCollectionEquality()
                    .equals(other.bannertype, bannertype)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailImage, thumbnailImage)) &&
            (identical(other.screenName, screenName) ||
                const DeepCollectionEquality()
                    .equals(other.screenName, screenName)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.tapAction, tapAction) ||
                const DeepCollectionEquality()
                    .equals(other.tapAction, tapAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bannerName) ^
      const DeepCollectionEquality().hash(bannertype) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(thumbnailImage) ^
      const DeepCollectionEquality().hash(screenName) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(tapAction);

  @JsonKey(ignore: true)
  @override
  _$BannerInfoCopyWith<_BannerInfo> get copyWith =>
      __$BannerInfoCopyWithImpl<_BannerInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BannerInfoToJson(this);
  }
}

abstract class _BannerInfo implements BannerInfo {
  factory _BannerInfo(
      String? bannerName,
      String? bannertype,
      String? url,
      String? thumbnailImage,
      String? screenName,
      bool isActive,
      TapAction? tapAction) = _$_BannerInfo;

  factory _BannerInfo.fromJson(Map<String, dynamic> json) =
      _$_BannerInfo.fromJson;

  @override
  String? get bannerName => throw _privateConstructorUsedError;
  @override
  String? get bannertype => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get thumbnailImage => throw _privateConstructorUsedError;
  @override
  String? get screenName => throw _privateConstructorUsedError;
  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  TapAction? get tapAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannerInfoCopyWith<_BannerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
