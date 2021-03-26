// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'subjects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Subjects _$SubjectsFromJson(Map<String, dynamic> json) {
  return _Subjects.fromJson(json);
}

/// @nodoc
class _$SubjectsTearOff {
  const _$SubjectsTearOff();

// ignore: unused_element
  _Subjects call(String questionPaperURL, String other, String subjectName) {
    return _Subjects(
      questionPaperURL,
      other,
      subjectName,
    );
  }

// ignore: unused_element
  Subjects fromJson(Map<String, Object> json) {
    return Subjects.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Subjects = _$SubjectsTearOff();

/// @nodoc
mixin _$Subjects {
  String get questionPaperURL;
  String get other;
  String get subjectName;

  Map<String, dynamic> toJson();
  $SubjectsCopyWith<Subjects> get copyWith;
}

/// @nodoc
abstract class $SubjectsCopyWith<$Res> {
  factory $SubjectsCopyWith(Subjects value, $Res Function(Subjects) then) =
      _$SubjectsCopyWithImpl<$Res>;
  $Res call({String questionPaperURL, String other, String subjectName});
}

/// @nodoc
class _$SubjectsCopyWithImpl<$Res> implements $SubjectsCopyWith<$Res> {
  _$SubjectsCopyWithImpl(this._value, this._then);

  final Subjects _value;
  // ignore: unused_field
  final $Res Function(Subjects) _then;

  @override
  $Res call({
    Object questionPaperURL = freezed,
    Object other = freezed,
    Object subjectName = freezed,
  }) {
    return _then(_value.copyWith(
      questionPaperURL: questionPaperURL == freezed
          ? _value.questionPaperURL
          : questionPaperURL as String,
      other: other == freezed ? _value.other : other as String,
      subjectName:
          subjectName == freezed ? _value.subjectName : subjectName as String,
    ));
  }
}

/// @nodoc
abstract class _$SubjectsCopyWith<$Res> implements $SubjectsCopyWith<$Res> {
  factory _$SubjectsCopyWith(_Subjects value, $Res Function(_Subjects) then) =
      __$SubjectsCopyWithImpl<$Res>;
  @override
  $Res call({String questionPaperURL, String other, String subjectName});
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
    Object questionPaperURL = freezed,
    Object other = freezed,
    Object subjectName = freezed,
  }) {
    return _then(_Subjects(
      questionPaperURL == freezed
          ? _value.questionPaperURL
          : questionPaperURL as String,
      other == freezed ? _value.other : other as String,
      subjectName == freezed ? _value.subjectName : subjectName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Subjects implements _Subjects {
  _$_Subjects(this.questionPaperURL, this.other, this.subjectName)
      : assert(questionPaperURL != null),
        assert(other != null),
        assert(subjectName != null);

  factory _$_Subjects.fromJson(Map<String, dynamic> json) =>
      _$_$_SubjectsFromJson(json);

  @override
  final String questionPaperURL;
  @override
  final String other;
  @override
  final String subjectName;

  @override
  String toString() {
    return 'Subjects(questionPaperURL: $questionPaperURL, other: $other, subjectName: $subjectName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subjects &&
            (identical(other.questionPaperURL, questionPaperURL) ||
                const DeepCollectionEquality()
                    .equals(other.questionPaperURL, questionPaperURL)) &&
            (identical(other.other, this.other) ||
                const DeepCollectionEquality()
                    .equals(other.other, this.other)) &&
            (identical(other.subjectName, subjectName) ||
                const DeepCollectionEquality()
                    .equals(other.subjectName, subjectName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionPaperURL) ^
      const DeepCollectionEquality().hash(other) ^
      const DeepCollectionEquality().hash(subjectName);

  @override
  _$SubjectsCopyWith<_Subjects> get copyWith =>
      __$SubjectsCopyWithImpl<_Subjects>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubjectsToJson(this);
  }
}

abstract class _Subjects implements Subjects {
  factory _Subjects(String questionPaperURL, String other, String subjectName) =
      _$_Subjects;

  factory _Subjects.fromJson(Map<String, dynamic> json) = _$_Subjects.fromJson;

  @override
  String get questionPaperURL;
  @override
  String get other;
  @override
  String get subjectName;
  @override
  _$SubjectsCopyWith<_Subjects> get copyWith;
}
