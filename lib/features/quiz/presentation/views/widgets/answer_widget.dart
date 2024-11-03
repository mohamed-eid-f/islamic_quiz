import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/end/presentation/end_view.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";
import "package:islamic_quiz/features/quiz/presentation/view_model/answer_provider.dart";
import "package:islamic_quiz/features/quiz/presentation/view_model/question_provider.dart";
import "package:islamic_quiz/features/quiz/presentation/view_model/quiz_provider.dart";

class AnswerWidget extends ConsumerWidget {
  const AnswerWidget({
    super.key,
    required this.text,
    required this.index,
  });

  final String text;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color buttonBackground = ref.watch(answerProvider(index));

    return InkWell(
      onTap: () async {
        // get the question answer
        // check the answer and
        bool isCorrect =
            ref.read(questionsProvider.notifier).checkAnswer(index);
        if (isCorrect) {
          ref.read(answerProvider(index).notifier).showCorrectAnswer();
          // wait for 2 seconds
          await Future.delayed(const Duration(seconds: 2));
          ref.read(quizIndexProvider.notifier).nextQuestion();
          // todo: update the score
        } else {
          // todo: show the correct answer
          // show the wrong answer animation
          ref.read(answerProvider(index).notifier).showWrongAnswer();
          // wait for 2 seconds
          await Future.delayed(const Duration(seconds: 2));
          // end game
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const EndView(),
          ));
        }
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: buttonBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 4,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: AppColors.secondary,
                ),
          ),
        ),
      ),
    );
  }
}
