// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tap_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TapAction _$TapActionFromJson(Map<String, dynamic> json) {
  return _TapAction.fromJson(json);
}

/// @nodoc
class _$TapActionTearOff {
  const _$TapActionTearOff();

  _TapAction call(String? action, String? route, Map<String, String?>? params) {
    return _TapAction(
      action,
      route,
      params,
    );
  }

  TapAction fromJson(Map<String, Object> json) {
    return TapAction.fromJson(json);
  }
}

/// @nodoc
const $TapAction = _$TapActionTearOff();

/// @nodoc
mixin _$TapAction {
  String? get action => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;
  Map<String, String?>? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TapActionCopyWith<TapAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TapActionCopyWith<$Res> {
  factory $TapActionCopyWith(TapAction value, $Res Function(TapAction) then) =
      _$TapActionCopyWithImpl<$Res>;
  $Res call({String? action, String? route, Map<String, String?>? params});
}

/// @nodoc
class _$TapActionCopyWithImpl<$Res> implements $TapActionCopyWith<$Res> {
  _$TapActionCopyWithImpl(this._value, this._then);

  final TapAction _value;
  // ignore: unused_field
  final $Res Function(TapAction) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? route = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>?,
    ));
  }
}

/// @nodoc
abstract class _$TapActionCopyWith<$Res> implements $TapActionCopyWith<$Res> {
  factory _$TapActionCopyWith(
          _TapAction value, $Res Function(_TapAction) then) =
      __$TapActionCopyWithImpl<$Res>;
  @override
  $Res call({String? action, String? route, Map<String, String?>? params});
}

/// @nodoc
class __$TapActionCopyWithImpl<$Res> extends _$TapActionCopyWithImpl<$Res>
    implements _$TapActionCopyWith<$Res> {
  __$TapActionCopyWithImpl(_TapAction _value, $Res Function(_TapAction) _then)
      : super(_value, (v) => _then(v as _TapAction));

  @override
  _TapAction get _value => super._value as _TapAction;

  @override
  $Res call({
    Object? action = freezed,
    Object? route = freezed,
    Object? params = freezed,
  }) {
    return _then(_TapAction(
      action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TapAction implements _TapAction {
  _$_TapAction(this.action, this.route, this.params);

  factory _$_TapAction.fromJson(Map<String, dynamic> json) =>
      _$_$_TapActionFromJson(json);

  @override
  final String? action;
  @override
  final String? route;
  @override
  final Map<String, String?>? params;

  @override
  String toString() {
    return 'TapAction(action: $action, route: $route, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TapAction &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.params, params) ||
                const DeepCollectionEquality().equals(other.params, params)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(params);

  @JsonKey(ignore: true)
  @override
  _$TapActionCopyWith<_TapAction> get copyWith =>
      __$TapActionCopyWithImpl<_TapAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TapActionToJson(this);
  }
}

abstract class _TapAction implements TapAction {
  factory _TapAction(
          String? action, String? route, Map<String, String?>? params) =
      _$_TapAction;

  factory _TapAction.fromJson(Map<String, dynamic> json) =
      _$_TapAction.fromJson;

  @override
  String? get action => throw _privateConstructorUsedError;
  @override
  String? get route => throw _privateConstructorUsedError;
  @override
  Map<String, String?>? get params => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TapActionCopyWith<_TapAction> get copyWith =>
      throw _privateConstructorUsedError;
}
