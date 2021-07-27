import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../app_config/tap_action.dart';

part 'banner_info.freezed.dart';
part 'banner_info.g.dart';

@freezed
class BannerInfo with _$BannerInfo {
  factory BannerInfo(
    String? bannerName,
    String? bannertype,
    String? url,
    String? thumbnailImage,
    String? screenName,
    bool isActive,
    TapAction? tapAction,
  ) = _BannerInfo;

  factory BannerInfo.fromJson(Map<String, dynamic> json) =>
      _$BannerInfoFromJson(json);
}
