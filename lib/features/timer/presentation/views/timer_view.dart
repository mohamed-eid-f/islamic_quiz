import "package:flutter/material.dart";
import "package:islamic_quiz/features/timer/presentation/views/widgets/action_buttons.dart";
import "package:islamic_quiz/features/timer/presentation/views/widgets/timer_value.dart";

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimerValue(),
            SizedBox(height: 20),
            ActionsButtons(),
          ],
        ),
      ),
    );
  }
}
