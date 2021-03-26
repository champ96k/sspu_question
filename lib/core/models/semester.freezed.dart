// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'semester.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Semester _$SemesterFromJson(Map<String, dynamic> json) {
  return _Semester.fromJson(json);
}

/// @nodoc
class _$SemesterTearOff {
  const _$SemesterTearOff();

// ignore: unused_element
  _Semester call(String semesterName, List<ExamPattern> examPattern) {
    return _Semester(
      semesterName,
      examPattern,
    );
  }

// ignore: unused_element
  Semester fromJson(Map<String, Object> json) {
    return Semester.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Semester = _$SemesterTearOff();

/// @nodoc
mixin _$Semester {
  String get semesterName;
  List<ExamPattern> get examPattern;

  Map<String, dynamic> toJson();
  $SemesterCopyWith<Semester> get copyWith;
}

/// @nodoc
abstract class $SemesterCopyWith<$Res> {
  factory $SemesterCopyWith(Semester value, $Res Function(Semester) then) =
      _$SemesterCopyWithImpl<$Res>;
  $Res call({String semesterName, List<ExamPattern> examPattern});
}

/// @nodoc
class _$SemesterCopyWithImpl<$Res> implements $SemesterCopyWith<$Res> {
  _$SemesterCopyWithImpl(this._value, this._then);

  final Semester _value;
  // ignore: unused_field
  final $Res Function(Semester) _then;

  @override
  $Res call({
    Object semesterName = freezed,
    Object examPattern = freezed,
  }) {
    return _then(_value.copyWith(
      semesterName: semesterName == freezed
          ? _value.semesterName
          : semesterName as String,
      examPattern: examPattern == freezed
          ? _value.examPattern
          : examPattern as List<ExamPattern>,
    ));
  }
}

/// @nodoc
abstract class _$SemesterCopyWith<$Res> implements $SemesterCopyWith<$Res> {
  factory _$SemesterCopyWith(_Semester value, $Res Function(_Semester) then) =
      __$SemesterCopyWithImpl<$Res>;
  @override
  $Res call({String semesterName, List<ExamPattern> examPattern});
}

/// @nodoc
class __$SemesterCopyWithImpl<$Res> extends _$SemesterCopyWithImpl<$Res>
    implements _$SemesterCopyWith<$Res> {
  __$SemesterCopyWithImpl(_Semester _value, $Res Function(_Semester) _then)
      : super(_value, (v) => _then(v as _Semester));

  @override
  _Semester get _value => super._value as _Semester;

  @override
  $Res call({
    Object semesterName = freezed,
    Object examPattern = freezed,
  }) {
    return _then(_Semester(
      semesterName == freezed ? _value.semesterName : semesterName as String,
      examPattern == freezed
          ? _value.examPattern
          : examPattern as List<ExamPattern>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Semester implements _Semester {
  _$_Semester(this.semesterName, this.examPattern)
      : assert(semesterName != null),
        assert(examPattern != null);

  factory _$_Semester.fromJson(Map<String, dynamic> json) =>
      _$_$_SemesterFromJson(json);

  @override
  final String semesterName;
  @override
  final List<ExamPattern> examPattern;

  @override
  String toString() {
    return 'Semester(semesterName: $semesterName, examPattern: $examPattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Semester &&
            (identical(other.semesterName, semesterName) ||
                const DeepCollectionEquality()
                    .equals(other.semesterName, semesterName)) &&
            (identical(other.examPattern, examPattern) ||
                const DeepCollectionEquality()
                    .equals(other.examPattern, examPattern)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(semesterName) ^
      const DeepCollectionEquality().hash(examPattern);

  @override
  _$SemesterCopyWith<_Semester> get copyWith =>
      __$SemesterCopyWithImpl<_Semester>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SemesterToJson(this);
  }
}

abstract class _Semester implements Semester {
  factory _Semester(String semesterName, List<ExamPattern> examPattern) =
      _$_Semester;

  factory _Semester.fromJson(Map<String, dynamic> json) = _$_Semester.fromJson;

  @override
  String get semesterName;
  @override
  List<ExamPattern> get examPattern;
  @override
  _$SemesterCopyWith<_Semester> get copyWith;
}
