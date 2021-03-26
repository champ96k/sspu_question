
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sspu_question/core/models/model.dart';
part 'branches.freezed.dart';
part 'branches.g.dart';

@freezed
abstract class Branches with _$Branches {
  factory Branches(
    String branchName,
  List<Semester> semester,
  ) = _Branches;
	
  factory Branches.fromJson(Map<String, dynamic> json) =>
			_$BranchesFromJson(json);
}
