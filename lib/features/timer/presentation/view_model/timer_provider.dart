import "dart:async";
import "dart:developer";

import "package:flutter/material.dart";
import "package:islamic_quiz/features/end/presentation/end_view.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/ticker.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/timer_state.dart";
import "package:islamic_quiz/main.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "timer_provider.g.dart";

@riverpod
class Timer extends _$Timer {
  final int _duration = 20;
  final Ticker _ticker = const Ticker();
  StreamSubscription<int>? _tickerSubscription;

  @override
  Stream<TimerState> build() {
    ref.onDispose(() {
      print("Timer disposed");
      _tickerSubscription?.cancel();
    });
    return Stream.value(TimerInitial(_duration));
  }

  void startTimer() {
    state = AsyncData(TimerRunning(_duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: _duration).listen((duration) {
      // timer finished, go to next screen
      if (duration != 0) {
        state = AsyncData(TimerRunning(duration));
      } else {
        _tickerSubscription?.cancel();
        state = const AsyncData(TimerFinished());
        // end game
        Future.delayed(const Duration(seconds: 2), () {
          log("Time Finished");
          navigatorKey.currentState!.pushReplacement(MaterialPageRoute(
            builder: (context) => const EndView(),
          ));
        });
      }
    });
  }

  void pauseTimer() {
    if (state.value! is TimerRunning) {
      _tickerSubscription?.pause();
      state = AsyncData(TimerPaused(state.value!.duration));
    }
  }

  void resumeTimer() {
    if (state.value! is TimerPaused) {
      _tickerSubscription?.resume();
      state = AsyncData(TimerRunning(state.value!.duration));
    }
  }

  void resetTimer() {
    _tickerSubscription?.cancel();
    state = AsyncData(TimerInitial(_duration));
  }
}
