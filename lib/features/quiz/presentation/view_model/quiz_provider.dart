import "package:riverpod_annotation/riverpod_annotation.dart";

part "quiz_provider.g.dart";

@Riverpod(keepAlive: true)
class QuizIndex extends _$QuizIndex {
  @override
  int build() {
    return 0;
  }

  void nextQuestion() {
    if (state < 14) {
      state++;
    }
  }
}
