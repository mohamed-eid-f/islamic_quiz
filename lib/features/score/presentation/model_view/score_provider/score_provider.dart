import "package:islamic_quiz/features/score/model/repository/score_repository.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "score_provider.g.dart";

@riverpod
class Score extends _$Score {
  ScoreRepository repository = ScoreRepository();
  @override
  int build() {
    ref.onDispose(() {
      print("Score disposed");
    });
    return 0;
  }

  void addScore(int score) {
    state += score;
  }

  void saveHighScore(int score) {
    // save score to local storage
    repository.saveHighScore(score);
  }

  Future<List<String>> getHighScores() async {
    // get high scores from local storage
    return await repository.getHighScore();
  }
}
