// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subjects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subjects _$SubjectsFromJson(Map<String, dynamic> json) {
  return _Subjects.fromJson(json);
}

/// @nodoc
class _$SubjectsTearOff {
  const _$SubjectsTearOff();

  _Subjects call(String? subjectName, List<QuestionPapers?>? questionPapers) {
    return _Subjects(
      subjectName,
      questionPapers,
    );
  }

  Subjects fromJson(Map<String, Object> json) {
    return Subjects.fromJson(json);
  }
}

/// @nodoc
const $Subjects = _$SubjectsTearOff();

/// @nodoc
mixin _$Subjects {
  String? get subjectName => throw _privateConstructorUsedError;
  List<QuestionPapers?>? get questionPapers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectsCopyWith<Subjects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsCopyWith<$Res> {
  factory $SubjectsCopyWith(Subjects value, $Res Function(Subjects) then) =
      _$SubjectsCopyWithImpl<$Res>;
  $Res call({String? subjectName, List<QuestionPapers?>? questionPapers});
}

/// @nodoc
class _$SubjectsCopyWithImpl<$Res> implements $SubjectsCopyWith<$Res> {
  _$SubjectsCopyWithImpl(this._value, this._then);

  final Subjects _value;
  // ignore: unused_field
  final $Res Function(Subjects) _then;

  @override
  $Res call({
    Object? subjectName = freezed,
    Object? questionPapers = freezed,
  }) {
    return _then(_value.copyWith(
      subjectName: subjectName == freezed
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      questionPapers: questionPapers == freezed
          ? _value.questionPapers
          : questionPapers // ignore: cast_nullable_to_non_nullable
              as List<QuestionPapers?>?,
    ));
  }
}

/// @nodoc
abstract class _$SubjectsCopyWith<$Res> implements $SubjectsCopyWith<$Res> {
  factory _$SubjectsCopyWith(_Subjects value, $Res Function(_Subjects) then) =
      __$SubjectsCopyWithImpl<$Res>;
  @override
  $Res call({String? subjectName, List<QuestionPapers?>? questionPapers});
}

/// @nodoc
class __$SubjectsCopyWithImpl<$Res> extends _$SubjectsCopyWithImpl<$Res>
    implements _$SubjectsCopyWith<$Res> {
  __$SubjectsCopyWithImpl(_Subjects _value, $Res Function(_Subjects) _then)
      : super(_value, (v) => _then(v as _Subjects));

  @override
  _Subjects get _value => super._value as _Subjects;

  @override
  $Res call({
    Object? subjectName = freezed,
    Object? questionPapers = freezed,
  }) {
    return _then(_Subjects(
      subjectName == freezed
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      questionPapers == freezed
          ? _value.questionPapers
          : questionPapers // ignore: cast_nullable_to_non_nullable
              as List<QuestionPapers?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subjects implements _Subjects {
  _$_Subjects(this.subjectName, this.questionPapers);

  factory _$_Subjects.fromJson(Map<String, dynamic> json) =>
      _$_$_SubjectsFromJson(json);

  @override
  final String? subjectName;
  @override
  final List<QuestionPapers?>? questionPapers;

  @override
  String toString() {
    return 'Subjects(subjectName: $subjectName, questionPapers: $questionPapers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subjects &&
            (identical(other.subjectName, subjectName) ||
                const DeepCollectionEquality()
                    .equals(other.subjectName, subjectName)) &&
            (identical(other.questionPapers, questionPapers) ||
                const DeepCollectionEquality()
                    .equals(other.questionPapers, questionPapers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subjectName) ^
      const DeepCollectionEquality().hash(questionPapers);

  @JsonKey(ignore: true)
  @override
  _$SubjectsCopyWith<_Subjects> get copyWith =>
      __$SubjectsCopyWithImpl<_Subjects>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubjectsToJson(this);
  }
}

abstract class _Subjects implements Subjects {
  factory _Subjects(
      String? subjectName, List<QuestionPapers?>? questionPapers) = _$_Subjects;

  factory _Subjects.fromJson(Map<String, dynamic> json) = _$_Subjects.fromJson;

  @override
  String? get subjectName => throw _privateConstructorUsedError;
  @override
  List<QuestionPapers?>? get questionPapers =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubjectsCopyWith<_Subjects> get copyWith =>
      throw _privateConstructorUsedError;
}
