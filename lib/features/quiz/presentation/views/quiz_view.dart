import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/question_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/score_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/timer.dart";

class QuizView extends ConsumerWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // int index = ref.watch(quizIndexProvider);

    return const Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 50),
            ScoreWidget(),
            SizedBox(height: 32),
            TimerWidget(),
            SizedBox(height: 32),
            // Progress(),
            SizedBox(height: 32),
            QuestionWidget(),
          ],
        ),
      ),
    );
  }
}
