import '../models.dart';

class Branches {
  String? branchId;
  String? branchName;
  String? branchThumbnail;
  String? backgroundColor;
  List<Semesters?>? semesters;

  Branches({
    this.branchId,
    this.branchName,
    this.branchThumbnail,
    this.backgroundColor,
    this.semesters,
  });

  Branches.fromJson(Map<String, dynamic> json) {
    branchId = json['branchId'];
    branchName = json['branchName'];
    branchThumbnail = json['branchThumbnail'];
    backgroundColor = json['backgroundColor'];
    if (json['semesters'] != null) {
      semesters = <Semesters>[];
      json['semesters'].forEach((v) {
        semesters!.add(Semesters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['branchId'] = branchId;
    data['branchName'] = branchName;
    data['branchThumbnail'] = branchThumbnail;
    data['backgroundColor'] = backgroundColor;
    if (semesters != null) {
      data['semesters'] = semesters!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}
