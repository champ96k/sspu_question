// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exampattern.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExamPattern _$ExamPatternFromJson(Map<String, dynamic> json) {
  return _ExamPattern.fromJson(json);
}

/// @nodoc
class _$ExamPatternTearOff {
  const _$ExamPatternTearOff();

// ignore: unused_element
  _ExamPattern call(String patternName, List<Subjects> subjects) {
    return _ExamPattern(
      patternName,
      subjects,
    );
  }

// ignore: unused_element
  ExamPattern fromJson(Map<String, Object> json) {
    return ExamPattern.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExamPattern = _$ExamPatternTearOff();

/// @nodoc
mixin _$ExamPattern {
  String get patternName;
  List<Subjects> get subjects;

  Map<String, dynamic> toJson();
  $ExamPatternCopyWith<ExamPattern> get copyWith;
}

/// @nodoc
abstract class $ExamPatternCopyWith<$Res> {
  factory $ExamPatternCopyWith(
          ExamPattern value, $Res Function(ExamPattern) then) =
      _$ExamPatternCopyWithImpl<$Res>;
  $Res call({String patternName, List<Subjects> subjects});
}

/// @nodoc
class _$ExamPatternCopyWithImpl<$Res> implements $ExamPatternCopyWith<$Res> {
  _$ExamPatternCopyWithImpl(this._value, this._then);

  final ExamPattern _value;
  // ignore: unused_field
  final $Res Function(ExamPattern) _then;

  @override
  $Res call({
    Object patternName = freezed,
    Object subjects = freezed,
  }) {
    return _then(_value.copyWith(
      patternName:
          patternName == freezed ? _value.patternName : patternName as String,
      subjects:
          subjects == freezed ? _value.subjects : subjects as List<Subjects>,
    ));
  }
}

/// @nodoc
abstract class _$ExamPatternCopyWith<$Res>
    implements $ExamPatternCopyWith<$Res> {
  factory _$ExamPatternCopyWith(
          _ExamPattern value, $Res Function(_ExamPattern) then) =
      __$ExamPatternCopyWithImpl<$Res>;
  @override
  $Res call({String patternName, List<Subjects> subjects});
}

/// @nodoc
class __$ExamPatternCopyWithImpl<$Res> extends _$ExamPatternCopyWithImpl<$Res>
    implements _$ExamPatternCopyWith<$Res> {
  __$ExamPatternCopyWithImpl(
      _ExamPattern _value, $Res Function(_ExamPattern) _then)
      : super(_value, (v) => _then(v as _ExamPattern));

  @override
  _ExamPattern get _value => super._value as _ExamPattern;

  @override
  $Res call({
    Object patternName = freezed,
    Object subjects = freezed,
  }) {
    return _then(_ExamPattern(
      patternName == freezed ? _value.patternName : patternName as String,
      subjects == freezed ? _value.subjects : subjects as List<Subjects>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExamPattern implements _ExamPattern {
  _$_ExamPattern(this.patternName, this.subjects)
      : assert(patternName != null),
        assert(subjects != null);

  factory _$_ExamPattern.fromJson(Map<String, dynamic> json) =>
      _$_$_ExamPatternFromJson(json);

  @override
  final String patternName;
  @override
  final List<Subjects> subjects;

  @override
  String toString() {
    return 'ExamPattern(patternName: $patternName, subjects: $subjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExamPattern &&
            (identical(other.patternName, patternName) ||
                const DeepCollectionEquality()
                    .equals(other.patternName, patternName)) &&
            (identical(other.subjects, subjects) ||
                const DeepCollectionEquality()
                    .equals(other.subjects, subjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patternName) ^
      const DeepCollectionEquality().hash(subjects);

  @override
  _$ExamPatternCopyWith<_ExamPattern> get copyWith =>
      __$ExamPatternCopyWithImpl<_ExamPattern>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExamPatternToJson(this);
  }
}

abstract class _ExamPattern implements ExamPattern {
  factory _ExamPattern(String patternName, List<Subjects> subjects) =
      _$_ExamPattern;

  factory _ExamPattern.fromJson(Map<String, dynamic> json) =
      _$_ExamPattern.fromJson;

  @override
  String get patternName;
  @override
  List<Subjects> get subjects;
  @override
  _$ExamPatternCopyWith<_ExamPattern> get copyWith;
}
