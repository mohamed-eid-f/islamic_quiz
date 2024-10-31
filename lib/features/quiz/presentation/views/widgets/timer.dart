import "package:flutter/material.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";

class Timer extends StatelessWidget {
  const Timer({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.timerBackground,
          boxShadow: [
            BoxShadow(
              color: Colors.amber[200]!,
              blurRadius: 8,
              spreadRadius: 8,
              offset: const Offset(0, 0),
            ),
            const BoxShadow(
              color: Colors.amber,
              blurRadius: 8,
              offset: Offset(4, 4),
            ),
          ],
        ),
        height: 48,
        width: 96,
        child: Center(
          child: Text(
            time,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: AppColors.fontColor,
                ),
          ),
        ));
  }
}
