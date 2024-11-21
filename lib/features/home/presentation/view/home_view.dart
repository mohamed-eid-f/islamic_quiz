import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/animated_icon.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/background_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/circle_button_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/loading_view.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/logo_widget.dart";

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
                flex: 8,
                child: SizedBox(
                  child: LogoWidget(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "نمي ثقافتك الإسلامية",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              Expanded(
                flex: 3,
                child: CircleButtonWidget(
                  icon: FontAwesomeIcons.play,
                  radius: 70,
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoadingView(),
                      ),
                    );
                  },
                ),
              ),
              // Expanded(
              //   flex: 4,
              // child:
              AnimatedTwoIcon()
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
