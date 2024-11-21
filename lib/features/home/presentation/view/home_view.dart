import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/background_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/circle_button_widget.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/help_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/loading_view.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/logo_widget.dart";
import "package:islamic_quiz/features/score/presentation/model_view/score_provider/score_provider.dart";
import "package:islamic_quiz/features/score/presentation/views/high_score_view.dart";

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
                flex: 4,
                child: CircleButtonWidget(
                  icon: FontAwesomeIcons.play,
                  radius: 80,
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
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        return CircleButtonWidget(
                          icon: FontAwesomeIcons.rankingStar,
                          onTap: () async {
                            List<String> highScores = await ref
                                .read(scoreProvider.notifier)
                                .getHighScores();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    // const HighScoreView(highScoresList: []),
                                    HighScoreView(highScoresList: highScores),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    CircleButtonWidget(
                      icon: FontAwesomeIcons.info,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const HelpWidget();
                          },
                        );
                      },
                    ),
                    // const CircleButtonWidget(icon: FontAwesomeIcons.gears),
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
