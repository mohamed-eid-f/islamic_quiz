import "package:flutter/material.dart";
import "package:islamic_quiz/core/consts/app_colors.dart";

class HighScoreItemWidget extends StatelessWidget {
  const HighScoreItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        color: AppColors.finishedBg,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
