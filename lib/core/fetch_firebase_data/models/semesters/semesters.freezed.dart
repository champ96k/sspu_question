// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'semesters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Semesters _$SemestersFromJson(Map<String, dynamic> json) {
  return _Semesters.fromJson(json);
}

/// @nodoc
class _$SemestersTearOff {
  const _$SemestersTearOff();

  _Semesters call(String? semesterName, List<Subjects?>? subjects) {
    return _Semesters(
      semesterName,
      subjects,
    );
  }

  Semesters fromJson(Map<String, Object> json) {
    return Semesters.fromJson(json);
  }
}

/// @nodoc
const $Semesters = _$SemestersTearOff();

/// @nodoc
mixin _$Semesters {
  String? get semesterName => throw _privateConstructorUsedError;
  List<Subjects?>? get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SemestersCopyWith<Semesters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SemestersCopyWith<$Res> {
  factory $SemestersCopyWith(Semesters value, $Res Function(Semesters) then) =
      _$SemestersCopyWithImpl<$Res>;
  $Res call({String? semesterName, List<Subjects?>? subjects});
}

/// @nodoc
class _$SemestersCopyWithImpl<$Res> implements $SemestersCopyWith<$Res> {
  _$SemestersCopyWithImpl(this._value, this._then);

  final Semesters _value;
  // ignore: unused_field
  final $Res Function(Semesters) _then;

  @override
  $Res call({
    Object? semesterName = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_value.copyWith(
      semesterName: semesterName == freezed
          ? _value.semesterName
          : semesterName // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects: subjects == freezed
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subjects?>?,
    ));
  }
}

/// @nodoc
abstract class _$SemestersCopyWith<$Res> implements $SemestersCopyWith<$Res> {
  factory _$SemestersCopyWith(
          _Semesters value, $Res Function(_Semesters) then) =
      __$SemestersCopyWithImpl<$Res>;
  @override
  $Res call({String? semesterName, List<Subjects?>? subjects});
}

/// @nodoc
class __$SemestersCopyWithImpl<$Res> extends _$SemestersCopyWithImpl<$Res>
    implements _$SemestersCopyWith<$Res> {
  __$SemestersCopyWithImpl(_Semesters _value, $Res Function(_Semesters) _then)
      : super(_value, (v) => _then(v as _Semesters));

  @override
  _Semesters get _value => super._value as _Semesters;

  @override
  $Res call({
    Object? semesterName = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_Semesters(
      semesterName == freezed
          ? _value.semesterName
          : semesterName // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects == freezed
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subjects?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Semesters implements _Semesters {
  _$_Semesters(this.semesterName, this.subjects);

  factory _$_Semesters.fromJson(Map<String, dynamic> json) =>
      _$_$_SemestersFromJson(json);

  @override
  final String? semesterName;
  @override
  final List<Subjects?>? subjects;

  @override
  String toString() {
    return 'Semesters(semesterName: $semesterName, subjects: $subjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Semesters &&
            (identical(other.semesterName, semesterName) ||
                const DeepCollectionEquality()
                    .equals(other.semesterName, semesterName)) &&
            (identical(other.subjects, subjects) ||
                const DeepCollectionEquality()
                    .equals(other.subjects, subjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(semesterName) ^
      const DeepCollectionEquality().hash(subjects);

  @JsonKey(ignore: true)
  @override
  _$SemestersCopyWith<_Semesters> get copyWith =>
      __$SemestersCopyWithImpl<_Semesters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SemestersToJson(this);
  }
}

abstract class _Semesters implements Semesters {
  factory _Semesters(String? semesterName, List<Subjects?>? subjects) =
      _$_Semesters;

  factory _Semesters.fromJson(Map<String, dynamic> json) =
      _$_Semesters.fromJson;

  @override
  String? get semesterName => throw _privateConstructorUsedError;
  @override
  List<Subjects?>? get subjects => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SemestersCopyWith<_Semesters> get copyWith =>
      throw _privateConstructorUsedError;
}
