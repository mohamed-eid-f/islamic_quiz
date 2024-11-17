import "package:riverpod_annotation/riverpod_annotation.dart";

part "quiz_provider.g.dart";

@riverpod
class QuizIndex extends _$QuizIndex {
  @override
  int build() {
    return 0;
  }

  void nextQuestion() {
    print("question index: ${state + 1}");
    if (state < 14) {
      state++;
    }
  }
}
