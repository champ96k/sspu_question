// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'question_bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionBankModel _$QuestionBankModelFromJson(Map<String, dynamic> json) {
  return _QuestionBankModel.fromJson(json);
}

/// @nodoc
class _$QuestionBankModelTearOff {
  const _$QuestionBankModelTearOff();

  _QuestionBankModel call(bool showBanners, List<BannerInfo?>? bannerInfo,
      List<Branches?>? branches) {
    return _QuestionBankModel(
      showBanners,
      bannerInfo,
      branches,
    );
  }

  QuestionBankModel fromJson(Map<String, Object> json) {
    return QuestionBankModel.fromJson(json);
  }
}

/// @nodoc
const $QuestionBankModel = _$QuestionBankModelTearOff();

/// @nodoc
mixin _$QuestionBankModel {
  bool get showBanners => throw _privateConstructorUsedError;
  List<BannerInfo?>? get bannerInfo => throw _privateConstructorUsedError;
  List<Branches?>? get branches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionBankModelCopyWith<QuestionBankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionBankModelCopyWith<$Res> {
  factory $QuestionBankModelCopyWith(
          QuestionBankModel value, $Res Function(QuestionBankModel) then) =
      _$QuestionBankModelCopyWithImpl<$Res>;
  $Res call(
      {bool showBanners,
      List<BannerInfo?>? bannerInfo,
      List<Branches?>? branches});
}

/// @nodoc
class _$QuestionBankModelCopyWithImpl<$Res>
    implements $QuestionBankModelCopyWith<$Res> {
  _$QuestionBankModelCopyWithImpl(this._value, this._then);

  final QuestionBankModel _value;
  // ignore: unused_field
  final $Res Function(QuestionBankModel) _then;

  @override
  $Res call({
    Object? showBanners = freezed,
    Object? bannerInfo = freezed,
    Object? branches = freezed,
  }) {
    return _then(_value.copyWith(
      showBanners: showBanners == freezed
          ? _value.showBanners
          : showBanners // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerInfo: bannerInfo == freezed
          ? _value.bannerInfo
          : bannerInfo // ignore: cast_nullable_to_non_nullable
              as List<BannerInfo?>?,
      branches: branches == freezed
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branches?>?,
    ));
  }
}

/// @nodoc
abstract class _$QuestionBankModelCopyWith<$Res>
    implements $QuestionBankModelCopyWith<$Res> {
  factory _$QuestionBankModelCopyWith(
          _QuestionBankModel value, $Res Function(_QuestionBankModel) then) =
      __$QuestionBankModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showBanners,
      List<BannerInfo?>? bannerInfo,
      List<Branches?>? branches});
}

/// @nodoc
class __$QuestionBankModelCopyWithImpl<$Res>
    extends _$QuestionBankModelCopyWithImpl<$Res>
    implements _$QuestionBankModelCopyWith<$Res> {
  __$QuestionBankModelCopyWithImpl(
      _QuestionBankModel _value, $Res Function(_QuestionBankModel) _then)
      : super(_value, (v) => _then(v as _QuestionBankModel));

  @override
  _QuestionBankModel get _value => super._value as _QuestionBankModel;

  @override
  $Res call({
    Object? showBanners = freezed,
    Object? bannerInfo = freezed,
    Object? branches = freezed,
  }) {
    return _then(_QuestionBankModel(
      showBanners == freezed
          ? _value.showBanners
          : showBanners // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerInfo == freezed
          ? _value.bannerInfo
          : bannerInfo // ignore: cast_nullable_to_non_nullable
              as List<BannerInfo?>?,
      branches == freezed
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branches?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionBankModel implements _QuestionBankModel {
  _$_QuestionBankModel(this.showBanners, this.bannerInfo, this.branches);

  factory _$_QuestionBankModel.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionBankModelFromJson(json);

  @override
  final bool showBanners;
  @override
  final List<BannerInfo?>? bannerInfo;
  @override
  final List<Branches?>? branches;

  @override
  String toString() {
    return 'QuestionBankModel(showBanners: $showBanners, bannerInfo: $bannerInfo, branches: $branches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionBankModel &&
            (identical(other.showBanners, showBanners) ||
                const DeepCollectionEquality()
                    .equals(other.showBanners, showBanners)) &&
            (identical(other.bannerInfo, bannerInfo) ||
                const DeepCollectionEquality()
                    .equals(other.bannerInfo, bannerInfo)) &&
            (identical(other.branches, branches) ||
                const DeepCollectionEquality()
                    .equals(other.branches, branches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showBanners) ^
      const DeepCollectionEquality().hash(bannerInfo) ^
      const DeepCollectionEquality().hash(branches);

  @JsonKey(ignore: true)
  @override
  _$QuestionBankModelCopyWith<_QuestionBankModel> get copyWith =>
      __$QuestionBankModelCopyWithImpl<_QuestionBankModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionBankModelToJson(this);
  }
}

abstract class _QuestionBankModel implements QuestionBankModel {
  factory _QuestionBankModel(bool showBanners, List<BannerInfo?>? bannerInfo,
      List<Branches?>? branches) = _$_QuestionBankModel;

  factory _QuestionBankModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionBankModel.fromJson;

  @override
  bool get showBanners => throw _privateConstructorUsedError;
  @override
  List<BannerInfo?>? get bannerInfo => throw _privateConstructorUsedError;
  @override
  List<Branches?>? get branches => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionBankModelCopyWith<_QuestionBankModel> get copyWith =>
      throw _privateConstructorUsedError;
}
