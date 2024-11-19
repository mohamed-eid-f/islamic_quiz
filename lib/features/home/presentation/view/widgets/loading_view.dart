import "package:flutter/material.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/background_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/quiz_view.dart";

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const QuizView()));
    });
    return const Scaffold(
      body: BackgroundWidget(
        child: Center(
          child: LoadingBar(),
        ),
      ),
    );
  }
}

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(16.0),
          width: double.infinity,
          height: 10,
          color: Colors.white,
        ),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          curve: Curves.easeInCubic,
          duration: const Duration(seconds: 5),
          builder: (context, value, child) {
            return Container(
              margin: const EdgeInsets.all(16.0),
              width: value * (width - 32),
              height: 10,
              color: Colors.blue,
            );
          },
        ),
      ],
    );
  }
}
