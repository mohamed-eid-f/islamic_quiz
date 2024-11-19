import "dart:developer";

import "package:islamic_quiz/core/repositories/shared_preferences_repository.dart";

class ScoreRepository {
  Future<void> saveHighScore(int score) async {
    if (score <= 0) return;
    // get high score list from shared preferences
    List<int> highScoreList =
        await SharedPreferencesRepository.getIntList("high_score");
    // add score to list
    highScoreList.add(score);
    // sort list in ascending order
    highScoreList.sort();
    // sort list in descending order
    highScoreList = highScoreList.reversed.toList();
    // remove duplicates
    highScoreList = highScoreList.toSet().toList();
    // remove last element if list length is greater than 10
    if (highScoreList.length > 10) {
      highScoreList.removeLast();
    }
    print(highScoreList.toSet().toList());

    log(highScoreList.toString()); //! remove this line
    SharedPreferencesRepository.setIntList("high_score", highScoreList);
  }

  Future<List<String>> getHighScore() async {
    List<String> highScoreList =
        await SharedPreferencesRepository.getStringList("high_score");
    return highScoreList;
  }
}
