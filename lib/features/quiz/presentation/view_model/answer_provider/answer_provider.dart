import "package:flutter/material.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "answer_provider.g.dart";

@riverpod
class Answer extends _$Answer {
  @override
  Color build(int index) {
    return AppColors.primary;
  }

  void showWrongAnswer() {
    state = AppColors.red;
  }

  void showCorrectAnswer() {
    state = AppColors.green;
  }
}
