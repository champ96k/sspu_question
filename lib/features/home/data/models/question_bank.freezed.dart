// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'question_bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QuestionBank _$QuestionBankFromJson(Map<String, dynamic> json) {
  return _QuestionBank.fromJson(json);
}

/// @nodoc
class _$QuestionBankTearOff {
  const _$QuestionBankTearOff();

// ignore: unused_element
  _QuestionBank call(List<Branches> branches) {
    return _QuestionBank(
      branches,
    );
  }

// ignore: unused_element
  QuestionBank fromJson(Map<String, Object> json) {
    return QuestionBank.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $QuestionBank = _$QuestionBankTearOff();

/// @nodoc
mixin _$QuestionBank {
  List<Branches> get branches;

  Map<String, dynamic> toJson();
  $QuestionBankCopyWith<QuestionBank> get copyWith;
}

/// @nodoc
abstract class $QuestionBankCopyWith<$Res> {
  factory $QuestionBankCopyWith(
          QuestionBank value, $Res Function(QuestionBank) then) =
      _$QuestionBankCopyWithImpl<$Res>;
  $Res call({List<Branches> branches});
}

/// @nodoc
class _$QuestionBankCopyWithImpl<$Res> implements $QuestionBankCopyWith<$Res> {
  _$QuestionBankCopyWithImpl(this._value, this._then);

  final QuestionBank _value;
  // ignore: unused_field
  final $Res Function(QuestionBank) _then;

  @override
  $Res call({
    Object branches = freezed,
  }) {
    return _then(_value.copyWith(
      branches:
          branches == freezed ? _value.branches : branches as List<Branches>,
    ));
  }
}

/// @nodoc
abstract class _$QuestionBankCopyWith<$Res>
    implements $QuestionBankCopyWith<$Res> {
  factory _$QuestionBankCopyWith(
          _QuestionBank value, $Res Function(_QuestionBank) then) =
      __$QuestionBankCopyWithImpl<$Res>;
  @override
  $Res call({List<Branches> branches});
}

/// @nodoc
class __$QuestionBankCopyWithImpl<$Res> extends _$QuestionBankCopyWithImpl<$Res>
    implements _$QuestionBankCopyWith<$Res> {
  __$QuestionBankCopyWithImpl(
      _QuestionBank _value, $Res Function(_QuestionBank) _then)
      : super(_value, (v) => _then(v as _QuestionBank));

  @override
  _QuestionBank get _value => super._value as _QuestionBank;

  @override
  $Res call({
    Object branches = freezed,
  }) {
    return _then(_QuestionBank(
      branches == freezed ? _value.branches : branches as List<Branches>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_QuestionBank implements _QuestionBank {
  _$_QuestionBank(this.branches) : assert(branches != null);

  factory _$_QuestionBank.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionBankFromJson(json);

  @override
  final List<Branches> branches;

  @override
  String toString() {
    return 'QuestionBank(branches: $branches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionBank &&
            (identical(other.branches, branches) ||
                const DeepCollectionEquality()
                    .equals(other.branches, branches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(branches);

  @override
  _$QuestionBankCopyWith<_QuestionBank> get copyWith =>
      __$QuestionBankCopyWithImpl<_QuestionBank>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionBankToJson(this);
  }
}

abstract class _QuestionBank implements QuestionBank {
  factory _QuestionBank(List<Branches> branches) = _$_QuestionBank;

  factory _QuestionBank.fromJson(Map<String, dynamic> json) =
      _$_QuestionBank.fromJson;

  @override
  List<Branches> get branches;
  @override
  _$QuestionBankCopyWith<_QuestionBank> get copyWith;
}
