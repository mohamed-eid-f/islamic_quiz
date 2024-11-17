import "package:flutter/material.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              AppColors.primaryLight,
              AppColors.primary,
            ],
            radius: 1,
          ),
        ),
        child: child);
  }
}
