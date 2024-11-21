import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/timer/presentation/views/widgets/timer_value.dart";

import "package:flutter_screenutil/flutter_screenutil.dart";

class TimerWidget extends ConsumerWidget {
  const TimerWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.timerBackground,
          boxShadow: [
            BoxShadow(
              color: Colors.amber[200]!,
              blurRadius: 8.r,
              spreadRadius: 8.r,
              offset: Offset(0.r, 0.r),
            ),
            BoxShadow(
              color: Colors.amber,
              blurRadius: 8.r,
              offset: Offset(4.r, 4.r),
            ),
          ],
        ),
        child: const Center(
          child: TimerValue(),
        ));
  }
}
