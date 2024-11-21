import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/circle_button_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/help_widget.dart";
import "package:islamic_quiz/features/score/presentation/model_view/score_provider/score_provider.dart";
import "package:islamic_quiz/features/score/presentation/views/high_score_view.dart";

class AnimatedTwoIcon extends StatefulWidget {
  const AnimatedTwoIcon({super.key});

  @override
  State<AnimatedTwoIcon> createState() => _FooTransitionState();
}

class _FooTransitionState extends State<AnimatedTwoIcon>
    with TickerProviderStateMixin {
  late Animation<AlignmentGeometry> icon1Animation;
  late Animation<AlignmentGeometry> icon2Animation;
  late AnimationController _icon1AnimationController;
  late AnimationController _icon2AnimationController;

  @override
  @override
  void initState() {
    super.initState();

    _icon1AnimationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(seconds: 1));

    _icon2AnimationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(seconds: 1));
    //...........
    icon1Animation = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(_icon1AnimationController);
    icon2Animation = Tween<AlignmentGeometry>(
            begin: Alignment.topLeft, end: Alignment.bottomLeft)
        .animate(_icon2AnimationController);
    //.....
    _icon1AnimationController.forward();
//......
    _icon1AnimationController.addStatusListener((status) {
      print("status of green animation is $status");
      if ((status == AnimationStatus.completed) &&
          (_icon2AnimationController.status == AnimationStatus.dismissed)) {
        //   _icon2AnimationController.forward();
        _icon1AnimationController.repeat(reverse: true);
        _icon2AnimationController.repeat(reverse: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Consumer(
            builder: (context, ref, child) {
              return AlignTransition(
                alignment: icon1Animation,
                child: CircleButtonWidget(
                  icon: FontAwesomeIcons.rankingStar,
                  onTap: () async {
                    List<String> highScores =
                        await ref.read(scoreProvider.notifier).getHighScores();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            // const HighScoreView(highScoresList: []),
                            HighScoreView(highScoresList: highScores),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          AlignTransition(
            alignment: icon2Animation,
            child: CircleButtonWidget(
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
          ),
          // const CircleButtonWidget(icon: FontAwesomeIcons.gears),
        ],
      ),
    );
  }
}
