import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'semesters.freezed.dart';
part 'semesters.g.dart';

@freezed
class Semesters with _$Semesters {
  factory Semesters(
    String? semesterName,
    List<Subjects?>? subjects,
  ) = _Semesters;

  factory Semesters.fromJson(Map<String, dynamic> json) =>
      _$SemestersFromJson(json);
}
