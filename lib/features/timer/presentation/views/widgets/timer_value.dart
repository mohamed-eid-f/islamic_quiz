import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/timer_provider.dart";

class TimerValue extends ConsumerWidget {
  const TimerValue({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(timerProvider);
    double width = MediaQuery.of(context).size.width;
    return timerState.maybeWhen(
      //   data: (value) => AnimatedContainer(
      //     duration: const Duration(seconds: 20),
      //     height: 10,
      //     color: Colors.black,
      //     curve: Curves.linear,
      //     width: value.duration.toDouble() * ((width - 32) / 20),
      // ),
      data: (value) => Text(
        formatTimer(value.duration),
        style: Theme.of(context).textTheme.displayMedium,
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }

  String formatTimer(int ticks) {
    final minutes = zeroPaddedTwoDigits((ticks / 60) % 60);
    final seconds = zeroPaddedTwoDigits(ticks % 60);

    return "$minutes:$seconds";
  }

  String zeroPaddedTwoDigits(double value) {
    return value.floor().toString().padLeft(2, "0");
  }
}
