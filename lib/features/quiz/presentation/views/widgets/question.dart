import "package:flutter/material.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.question,
  });

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
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

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    super.key,
    required this.text,
    required this.index,
  });

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(32.0),
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.primary,
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
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 4,
      ),
      child: Center(
        child: Text(
          "Next",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: AppColors.secondary,
              ),
        ),
      ),
    );
  }
}
