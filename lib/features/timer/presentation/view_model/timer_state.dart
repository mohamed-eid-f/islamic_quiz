abstract class TimerState {
  final int duration;
  const TimerState(this.duration);
}

class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => "TimerInitial(duration: $duration)";
}

class TimerRunning extends TimerState {
  const TimerRunning(super.duration);

  @override
  String toString() => "TimerRunning(duration: $duration)";
}

class TimerPaused extends TimerState {
  const TimerPaused(super.duration);

  @override
  String toString() => "TimerPaused(duration: $duration)";
}

class TimerFinished extends TimerState {
  const TimerFinished() : super(0);

  @override
  String toString() => "TimerFinished()";
}
