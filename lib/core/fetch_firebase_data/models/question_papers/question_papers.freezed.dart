// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'question_papers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionPapers _$QuestionPapersFromJson(Map<String, dynamic> json) {
  return _QuestionPapers.fromJson(json);
}

/// @nodoc
class _$QuestionPapersTearOff {
  const _$QuestionPapersTearOff();

  _QuestionPapers call(
      String? paperNmae, String? patternName, String? downloadURL) {
    return _QuestionPapers(
      paperNmae,
      patternName,
      downloadURL,
    );
  }

  QuestionPapers fromJson(Map<String, Object> json) {
    return QuestionPapers.fromJson(json);
  }
}

/// @nodoc
const $QuestionPapers = _$QuestionPapersTearOff();

/// @nodoc
mixin _$QuestionPapers {
  String? get paperNmae => throw _privateConstructorUsedError;
  String? get patternName => throw _privateConstructorUsedError;
  String? get downloadURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionPapersCopyWith<QuestionPapers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionPapersCopyWith<$Res> {
  factory $QuestionPapersCopyWith(
          QuestionPapers value, $Res Function(QuestionPapers) then) =
      _$QuestionPapersCopyWithImpl<$Res>;
  $Res call({String? paperNmae, String? patternName, String? downloadURL});
}

/// @nodoc
class _$QuestionPapersCopyWithImpl<$Res>
    implements $QuestionPapersCopyWith<$Res> {
  _$QuestionPapersCopyWithImpl(this._value, this._then);

  final QuestionPapers _value;
  // ignore: unused_field
  final $Res Function(QuestionPapers) _then;

  @override
  $Res call({
    Object? paperNmae = freezed,
    Object? patternName = freezed,
    Object? downloadURL = freezed,
  }) {
    return _then(_value.copyWith(
      paperNmae: paperNmae == freezed
          ? _value.paperNmae
          : paperNmae // ignore: cast_nullable_to_non_nullable
              as String?,
      patternName: patternName == freezed
          ? _value.patternName
          : patternName // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadURL: downloadURL == freezed
          ? _value.downloadURL
          : downloadURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$QuestionPapersCopyWith<$Res>
    implements $QuestionPapersCopyWith<$Res> {
  factory _$QuestionPapersCopyWith(
          _QuestionPapers value, $Res Function(_QuestionPapers) then) =
      __$QuestionPapersCopyWithImpl<$Res>;
  @override
  $Res call({String? paperNmae, String? patternName, String? downloadURL});
}

/// @nodoc
class __$QuestionPapersCopyWithImpl<$Res>
    extends _$QuestionPapersCopyWithImpl<$Res>
    implements _$QuestionPapersCopyWith<$Res> {
  __$QuestionPapersCopyWithImpl(
      _QuestionPapers _value, $Res Function(_QuestionPapers) _then)
      : super(_value, (v) => _then(v as _QuestionPapers));

  @override
  _QuestionPapers get _value => super._value as _QuestionPapers;

  @override
  $Res call({
    Object? paperNmae = freezed,
    Object? patternName = freezed,
    Object? downloadURL = freezed,
  }) {
    return _then(_QuestionPapers(
      paperNmae == freezed
          ? _value.paperNmae
          : paperNmae // ignore: cast_nullable_to_non_nullable
              as String?,
      patternName == freezed
          ? _value.patternName
          : patternName // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadURL == freezed
          ? _value.downloadURL
          : downloadURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionPapers implements _QuestionPapers {
  _$_QuestionPapers(this.paperNmae, this.patternName, this.downloadURL);

  factory _$_QuestionPapers.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionPapersFromJson(json);

  @override
  final String? paperNmae;
  @override
  final String? patternName;
  @override
  final String? downloadURL;

  @override
  String toString() {
    return 'QuestionPapers(paperNmae: $paperNmae, patternName: $patternName, downloadURL: $downloadURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionPapers &&
            (identical(other.paperNmae, paperNmae) ||
                const DeepCollectionEquality()
                    .equals(other.paperNmae, paperNmae)) &&
            (identical(other.patternName, patternName) ||
                const DeepCollectionEquality()
                    .equals(other.patternName, patternName)) &&
            (identical(other.downloadURL, downloadURL) ||
                const DeepCollectionEquality()
                    .equals(other.downloadURL, downloadURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paperNmae) ^
      const DeepCollectionEquality().hash(patternName) ^
      const DeepCollectionEquality().hash(downloadURL);

  @JsonKey(ignore: true)
  @override
  _$QuestionPapersCopyWith<_QuestionPapers> get copyWith =>
      __$QuestionPapersCopyWithImpl<_QuestionPapers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionPapersToJson(this);
  }
}

abstract class _QuestionPapers implements QuestionPapers {
  factory _QuestionPapers(
          String? paperNmae, String? patternName, String? downloadURL) =
      _$_QuestionPapers;

  factory _QuestionPapers.fromJson(Map<String, dynamic> json) =
      _$_QuestionPapers.fromJson;

  @override
  String? get paperNmae => throw _privateConstructorUsedError;
  @override
  String? get patternName => throw _privateConstructorUsedError;
  @override
  String? get downloadURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionPapersCopyWith<_QuestionPapers> get copyWith =>
      throw _privateConstructorUsedError;
}
