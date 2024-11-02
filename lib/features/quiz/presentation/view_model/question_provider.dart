import "dart:convert";

import "package:flutter/services.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";
import "package:islamic_quiz/features/quiz/presentation/view_model/quiz_provider.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "question_provider.g.dart";

@riverpod
class Questions extends _$Questions {
  @override
  FutureOr<QuestionModel> build() {
    return getQuestion();
  }

  Future<QuestionModel> getQuestion() async {
    int levelProvider = ref.watch(quizIndexProvider) + 1;
    String jsonString = await rootBundle.loadString("assets/data/data.json");
    final List decodedJson = json.decode(jsonString) as List;

    List<QuestionModel> questionModels = decodedJson
        .map<QuestionModel>(
            (jsonPostMode) => QuestionModel.fromJson(jsonPostMode))
        .toList();

    questionModels.shuffle();

    QuestionModel question =
        // questionModels.firstWhere((q) => q.level == 1);
        questionModels.firstWhere((q) => q.level == levelProvider);
    print(question);
    return question;
  }
}