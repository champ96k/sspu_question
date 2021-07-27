// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'branches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Branches _$BranchesFromJson(Map<String, dynamic> json) {
  return _Branches.fromJson(json);
}

/// @nodoc
class _$BranchesTearOff {
  const _$BranchesTearOff();

  _Branches call(String? branchName, String? branchThumbnail,
      String? backgroundColor, List<Semesters?>? semesters) {
    return _Branches(
      branchName,
      branchThumbnail,
      backgroundColor,
      semesters,
    );
  }

  Branches fromJson(Map<String, Object> json) {
    return Branches.fromJson(json);
  }
}

/// @nodoc
const $Branches = _$BranchesTearOff();

/// @nodoc
mixin _$Branches {
  String? get branchName => throw _privateConstructorUsedError;
  String? get branchThumbnail => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  List<Semesters?>? get semesters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchesCopyWith<Branches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchesCopyWith<$Res> {
  factory $BranchesCopyWith(Branches value, $Res Function(Branches) then) =
      _$BranchesCopyWithImpl<$Res>;
  $Res call(
      {String? branchName,
      String? branchThumbnail,
      String? backgroundColor,
      List<Semesters?>? semesters});
}

/// @nodoc
class _$BranchesCopyWithImpl<$Res> implements $BranchesCopyWith<$Res> {
  _$BranchesCopyWithImpl(this._value, this._then);

  final Branches _value;
  // ignore: unused_field
  final $Res Function(Branches) _then;

  @override
  $Res call({
    Object? branchName = freezed,
    Object? branchThumbnail = freezed,
    Object? backgroundColor = freezed,
    Object? semesters = freezed,
  }) {
    return _then(_value.copyWith(
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      branchThumbnail: branchThumbnail == freezed
          ? _value.branchThumbnail
          : branchThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      semesters: semesters == freezed
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<Semesters?>?,
    ));
  }
}

/// @nodoc
abstract class _$BranchesCopyWith<$Res> implements $BranchesCopyWith<$Res> {
  factory _$BranchesCopyWith(_Branches value, $Res Function(_Branches) then) =
      __$BranchesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? branchName,
      String? branchThumbnail,
      String? backgroundColor,
      List<Semesters?>? semesters});
}

/// @nodoc
class __$BranchesCopyWithImpl<$Res> extends _$BranchesCopyWithImpl<$Res>
    implements _$BranchesCopyWith<$Res> {
  __$BranchesCopyWithImpl(_Branches _value, $Res Function(_Branches) _then)
      : super(_value, (v) => _then(v as _Branches));

  @override
  _Branches get _value => super._value as _Branches;

  @override
  $Res call({
    Object? branchName = freezed,
    Object? branchThumbnail = freezed,
    Object? backgroundColor = freezed,
    Object? semesters = freezed,
  }) {
    return _then(_Branches(
      branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      branchThumbnail == freezed
          ? _value.branchThumbnail
          : branchThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      semesters == freezed
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<Semesters?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Branches implements _Branches {
  _$_Branches(this.branchName, this.branchThumbnail, this.backgroundColor,
      this.semesters);

  factory _$_Branches.fromJson(Map<String, dynamic> json) =>
      _$_$_BranchesFromJson(json);

  @override
  final String? branchName;
  @override
  final String? branchThumbnail;
  @override
  final String? backgroundColor;
  @override
  final List<Semesters?>? semesters;

  @override
  String toString() {
    return 'Branches(branchName: $branchName, branchThumbnail: $branchThumbnail, backgroundColor: $backgroundColor, semesters: $semesters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Branches &&
            (identical(other.branchName, branchName) ||
                const DeepCollectionEquality()
                    .equals(other.branchName, branchName)) &&
            (identical(other.branchThumbnail, branchThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.branchThumbnail, branchThumbnail)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.semesters, semesters) ||
                const DeepCollectionEquality()
                    .equals(other.semesters, semesters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(branchName) ^
      const DeepCollectionEquality().hash(branchThumbnail) ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(semesters);

  @JsonKey(ignore: true)
  @override
  _$BranchesCopyWith<_Branches> get copyWith =>
      __$BranchesCopyWithImpl<_Branches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BranchesToJson(this);
  }
}

abstract class _Branches implements Branches {
  factory _Branches(String? branchName, String? branchThumbnail,
      String? backgroundColor, List<Semesters?>? semesters) = _$_Branches;

  factory _Branches.fromJson(Map<String, dynamic> json) = _$_Branches.fromJson;

  @override
  String? get branchName => throw _privateConstructorUsedError;
  @override
  String? get branchThumbnail => throw _privateConstructorUsedError;
  @override
  String? get backgroundColor => throw _privateConstructorUsedError;
  @override
  List<Semesters?>? get semesters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BranchesCopyWith<_Branches> get copyWith =>
      throw _privateConstructorUsedError;
}
