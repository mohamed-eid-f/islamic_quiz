import "package:flutter/material.dart";
import "package:islamic_quiz/features/end/presentation/end_view.dart";
import "package:islamic_quiz/main.dart";

DateTime? currentBackPressTime;
void endGame(int score) {
  DateTime now = DateTime.now();
  if (currentBackPressTime != null &&
      now.difference(currentBackPressTime!) < const Duration(seconds: 10)) {
    // double tapped
    return;
  }
  currentBackPressTime = now;
  navigatorKey.currentState!.pushReplacement(MaterialPageRoute(
    builder: (context) => EndView(score: score),
  ));
}
