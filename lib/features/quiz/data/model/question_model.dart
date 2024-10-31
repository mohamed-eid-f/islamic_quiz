import "package:freezed_annotation/freezed_annotation.dart";
import "package:flutter/foundation.dart";

part "question_model.freezed.dart";
part "question_model.g.dart";

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required int id,
    required int level,
    required String question,
    @JsonKey(name: "answer_1") required String answer1,
    @JsonKey(name: "answer_2") required String answer2,
    @JsonKey(name: "answer_3") required String answer3,
    @JsonKey(name: "answer_4") required String answer4,
    @JsonKey(name: "answer_index") required int answerIndex,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
