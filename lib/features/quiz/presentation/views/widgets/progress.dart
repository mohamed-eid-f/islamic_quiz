import 'package:flutter/material.dart';
import 'package:islamic_quiz/core/colors/app_colors.dart';

class Progress extends StatelessWidget {
  const Progress({
    super.key,
    required this.questionNo,
  });
  final int questionNo;

  @override
  Widget build(BuildContext context) {
    const double radius = 6;
    const double allQuestions = 15;
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
