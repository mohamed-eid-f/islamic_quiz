import "dart:convert";

import "package:flutter/services.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";

class DatabaseManager {
  static Future<List<QuestionModel>> getGame() async {
    String jsonString = await rootBundle.loadString("assets/data/data.json");
    final List decodedJson = json.decode(jsonString) as List;

    List<QuestionModel> questionModels = decodedJson
        .map<QuestionModel>(
            (jsonPostMode) => QuestionModel.fromJson(jsonPostMode))
        .toList();

    questionModels.shuffle();
    List<QuestionModel> game = [];
    // List<String> gameTest = [];
    for (int i = 1; i <= 15; i++) {
      game.add(questionModels.firstWhere((question) => question.level == i));
      // gameTest.add(game.last.question);
    }
    // print(gameTest);

    return game;
  }
}
