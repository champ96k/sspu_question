import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'branches.freezed.dart';
part 'branches.g.dart';

@freezed
class Branches with _$Branches {
  factory Branches(
    String? branchName,
    String? branchThumbnail,
    String? backgroundColor,
    List<Semesters?>? semesters,
  ) = _Branches;

  factory Branches.fromJson(Map<String, dynamic> json) =>
      _$BranchesFromJson(json);
}
