import "dart:async";

import "package:islamic_quiz/features/end/view_model/end_provider.dart";
import "package:islamic_quiz/features/score/presentation/model_view/score_provider/score_provider.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/ticker.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/timer_state.dart";
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
      // print("Timer disposed");
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
          int score = ref.read(scoreProvider);
          endGame(score);
          // navigatorKey.currentState!.pushReplacement(MaterialPageRoute(
          //   builder: (context) => const EndView(),
          // ));
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
