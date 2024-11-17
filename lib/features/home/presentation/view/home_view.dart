import "package:flutter/material.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/background_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/circle_button_widget.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/logo_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/quiz_view.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Center(
          child: Column(
            children: [
              const Expanded(
                  flex: 2,
                  child: SizedBox(
                    child: LogoWidget(),
                  )),
              Expanded(
                flex: 1,
                child: CircleButtonWidget(
                  icon: FontAwesomeIcons.play,
                  radius: 80,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizView(),
                      ),
                    );
                  },
                ),
              ),
              const Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButtonWidget(icon: FontAwesomeIcons.rankingStar),
                    CircleButtonWidget(icon: FontAwesomeIcons.info),
                    CircleButtonWidget(icon: FontAwesomeIcons.gears),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
