import 'package:freezed_annotation/freezed_annotation.dart';

part 'tap_action.freezed.dart';
part 'tap_action.g.dart';

@freezed
class TapAction with _$TapAction {
  factory TapAction(
    String? action,
    String? route,
    Map<String, String?>? params,
  ) = _TapAction;

  factory TapAction.fromJson(Map<String, dynamic> json) =>
      _$TapActionFromJson(json);
}
