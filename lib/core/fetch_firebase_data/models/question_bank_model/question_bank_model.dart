import 'package:freezed_annotation/freezed_annotation.dart';
import '../models.dart';

part 'question_bank_model.freezed.dart';
part 'question_bank_model.g.dart';

@freezed
class QuestionBankModel with _$QuestionBankModel {
  factory QuestionBankModel(
    bool showBanners,
    List<BannerInfo?>? bannerInfo,
    List<Branches?>? branches,
  ) = _QuestionBankModel;

  factory QuestionBankModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionBankModelFromJson(json);
}
