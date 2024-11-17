import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";
import "package:islamic_quiz/features/quiz/presentation/view_model/question_provider/question_provider.dart";

class Progress extends ConsumerWidget {
  const Progress({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double radius = 6;
    const double allQuestions = 15;
    AsyncValue<QuestionModel> question = ref.watch(questionsProvider);
    int questionNo = question.asData?.value.level ?? 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < allQuestions; i++)
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              radius: radius,
              backgroundColor: AppColors.secondary,
              child: CircleAvatar(
                radius: radius - 2,
                backgroundColor:
                    i < questionNo ? AppColors.secondary : AppColors.primary,
              ),
            ),
          ),
      ],
    );
  }
}
