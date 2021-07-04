class BannerInfo {
  String? bannerId;
  String? bannerName;
  String? bannertype;
  String? url;
  String? thumbnailImage;
  String? screenName;

  BannerInfo({
    this.bannerId,
    this.bannerName,
    this.bannertype,
    this.url,
    this.thumbnailImage,
    this.screenName,
  });

  BannerInfo.fromJson(Map<String, dynamic> json) {
    bannerId = json['bannerId'];
    bannerName = json['bannerName'];
    bannertype = json['bannertype'];
    url = json['url'];
    thumbnailImage = json['thumbnailImage'];
    screenName = json['screenName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bannerId'] = bannerId;
    data['bannerName'] = bannerName;
    data['bannertype'] = bannertype;
    data['url'] = url;
    data['thumbnailImage'] = thumbnailImage;
    data['screenName'] = screenName;
    return data;
  }
}
