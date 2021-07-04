import '../models.dart';

class QuestionBankModel {
  List<BannerInfo?>? bannerInfo;
  bool? showBanners;
  List<Branches?>? branches;

  QuestionBankModel({
    this.bannerInfo,
    this.showBanners,
    this.branches,
  });

  QuestionBankModel.fromJson(Map<String, dynamic> json) {
    if (json['bannerInfo'] != null) {
      bannerInfo = <BannerInfo>[];
      json['bannerInfo'].forEach((v) {
        bannerInfo!.add(BannerInfo.fromJson(v));
      });
    }
    showBanners = json['showBanners'];
    if (json['branches'] != null) {
      branches = <Branches>[];
      json['branches'].forEach((v) {
        branches!.add(Branches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bannerInfo != null) {
      data['bannerInfo'] = bannerInfo!.map((v) => v!.toJson()).toList();
    }
    data['showBanners'] = showBanners;
    if (branches != null) {
      data['branches'] = branches!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}
