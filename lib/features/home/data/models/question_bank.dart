import 'package:sspu_question/features/home/data/models/model.dart';
import 'dart:convert';

QuestionBank questionBankFromJson(String str) => QuestionBank.fromJson(json.decode(str));
String questionBankToJson(QuestionBank data) => json.encode(data.toJson());

class QuestionBank {
    QuestionBank({
        this.branches,
    });

    List<Branch> branches;

    factory QuestionBank.fromJson(Map<String, dynamic> json) => QuestionBank(
        branches: List<Branch>.from(json["branches"].map((x) => Branch.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "branches": List<dynamic>.from(branches.map((x) => x.toJson())),
    };
}