import "package:flutter/material.dart";
import "package:islamic_quiz/features/home/presentation/view/home_view.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/logo_widget.dart";

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeView()),
      );
    });
    return const Scaffold(
      body: LogoWidget(),
    );
  }
}
