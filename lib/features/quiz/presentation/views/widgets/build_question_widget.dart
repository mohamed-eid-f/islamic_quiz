import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/answer_widget.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/timer_provider.dart";

class BuildQuestion extends ConsumerWidget {
  const BuildQuestion({
    super.key,
    required this.question,
  });

  final QuestionModel question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.delayed(Duration.zero, () {
      ref.read(timerProvider.notifier).startTimer();
    });
    return Container(
      height: 520,
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: Text(
                question.question,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
          const Divider(thickness: 5, color: AppColors.primary),
          AnswerWidget(text: question.answer1, index: 1),
          AnswerWidget(text: question.answer2, index: 2),
          AnswerWidget(text: question.answer3, index: 3),
          AnswerWidget(text: question.answer4, index: 4),
          const SizedBox(height: 16),
          // AnswerButton(),
        ],
      ),
    );
  }
}
