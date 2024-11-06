import "package:riverpod_annotation/riverpod_annotation.dart";

part "score_provider.g.dart";

@riverpod
class Score extends _$Score {
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
}
