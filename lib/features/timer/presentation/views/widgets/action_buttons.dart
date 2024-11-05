import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/timer_provider.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/timer_state.dart";

class ActionsButtons extends ConsumerWidget {
  const ActionsButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timerProvider);
    if (state is! AsyncData) {
      return const SizedBox.shrink();
    }
    if (state.value! is TimerInitial) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(timerProvider.notifier).startTimer();
            },
            child: const Icon(Icons.play_arrow),
          ),
        ],
      );
    } else if (state.value! is TimerRunning) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(timerProvider.notifier).pauseTimer();
            },
            child: const Icon(Icons.pause),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(timerProvider.notifier).resetTimer();
            },
            child: const Icon(Icons.replay),
          ),
        ],
      );
    } else if (state.value! is TimerPaused) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(timerProvider.notifier).resumeTimer();
            },
            child: const Icon(Icons.play_arrow),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(timerProvider.notifier).resetTimer();
            },
            child: const Icon(Icons.replay),
          ),
        ],
      );
    } else if (state.value! is TimerFinished) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(timerProvider.notifier).resetTimer();
            },
            child: const Icon(Icons.replay),
          ),
        ],
      );
    }
    return const SizedBox.shrink();
  }
}
