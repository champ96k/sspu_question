// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'branches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Branches _$BranchesFromJson(Map<String, dynamic> json) {
  return _Branches.fromJson(json);
}

/// @nodoc
class _$BranchesTearOff {
  const _$BranchesTearOff();

// ignore: unused_element
  _Branches call(String branchName, List<Semester> semester) {
    return _Branches(
      branchName,
      semester,
    );
  }

// ignore: unused_element
  Branches fromJson(Map<String, Object> json) {
    return Branches.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Branches = _$BranchesTearOff();

/// @nodoc
mixin _$Branches {
  String get branchName;
  List<Semester> get semester;

  Map<String, dynamic> toJson();
  $BranchesCopyWith<Branches> get copyWith;
}

/// @nodoc
abstract class $BranchesCopyWith<$Res> {
  factory $BranchesCopyWith(Branches value, $Res Function(Branches) then) =
      _$BranchesCopyWithImpl<$Res>;
  $Res call({String branchName, List<Semester> semester});
}

/// @nodoc
class _$BranchesCopyWithImpl<$Res> implements $BranchesCopyWith<$Res> {
  _$BranchesCopyWithImpl(this._value, this._then);

  final Branches _value;
  // ignore: unused_field
  final $Res Function(Branches) _then;

  @override
  $Res call({
    Object branchName = freezed,
    Object semester = freezed,
  }) {
    return _then(_value.copyWith(
      branchName:
          branchName == freezed ? _value.branchName : branchName as String,
      semester:
          semester == freezed ? _value.semester : semester as List<Semester>,
    ));
  }
}

/// @nodoc
abstract class _$BranchesCopyWith<$Res> implements $BranchesCopyWith<$Res> {
  factory _$BranchesCopyWith(_Branches value, $Res Function(_Branches) then) =
      __$BranchesCopyWithImpl<$Res>;
  @override
  $Res call({String branchName, List<Semester> semester});
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
    Object branchName = freezed,
    Object semester = freezed,
  }) {
    return _then(_Branches(
      branchName == freezed ? _value.branchName : branchName as String,
      semester == freezed ? _value.semester : semester as List<Semester>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Branches implements _Branches {
  _$_Branches(this.branchName, this.semester)
      : assert(branchName != null),
        assert(semester != null);

  factory _$_Branches.fromJson(Map<String, dynamic> json) =>
      _$_$_BranchesFromJson(json);

  @override
  final String branchName;
  @override
  final List<Semester> semester;

  @override
  String toString() {
    return 'Branches(branchName: $branchName, semester: $semester)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Branches &&
            (identical(other.branchName, branchName) ||
                const DeepCollectionEquality()
                    .equals(other.branchName, branchName)) &&
            (identical(other.semester, semester) ||
                const DeepCollectionEquality()
                    .equals(other.semester, semester)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(branchName) ^
      const DeepCollectionEquality().hash(semester);

  @override
  _$BranchesCopyWith<_Branches> get copyWith =>
      __$BranchesCopyWithImpl<_Branches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BranchesToJson(this);
  }
}

abstract class _Branches implements Branches {
  factory _Branches(String branchName, List<Semester> semester) = _$_Branches;

  factory _Branches.fromJson(Map<String, dynamic> json) = _$_Branches.fromJson;

  @override
  String get branchName;
  @override
  List<Semester> get semester;
  @override
  _$BranchesCopyWith<_Branches> get copyWith;
}
