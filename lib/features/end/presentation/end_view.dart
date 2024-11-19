import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/home/presentation/view/home_view.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/background_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/circle_button_widget.dart";
import "package:islamic_quiz/features/score/presentation/model_view/score_provider/score_provider.dart";

class EndView extends ConsumerWidget {
  final int score;
  const EndView({super.key, required this.score});

  final List<String> endMessage = const [
    "حاول الوصول إلى مستويات أعلى في المحاولة القادمة للحصول على نقاط أكبر",
    "أنت تستثمر وقتك بشكل جيد في الحصول على معلومات إسلامية مفيدة",
    "يمكنك البحث عن إجابات الأسئلة التي لم تستطع الإجابة عليها لتعلم المزيد",
    "وقت ممتع ليس فقط للتسلية ، ولكن لتنمية الثقافة أيضا",
    "ساعدنا فى نشر التطبيق ليتعلم مثلك الكثير",
  ];

  String _getMessage(int score) {
    return score > 1500
        ? "هكذا يكون الأداء"
        : score > 1000
            ? "محاولة رائعة"
            : score > 700
                ? "محاولة جيدة جدا"
                : score > 500
                    ? "محاولة جيدة"
                    : score > 200
                        ? "في إمكانك المزيد"
                        : "محاولة بائسة";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(scoreProvider.notifier).saveHighScore(score);
    int messageIndex = Random().nextInt(endMessage.length);
    return Scaffold(
      body: BackgroundWidget(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16.0),
            height: 620,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: AppColors.secondary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Container(
                  // height: 300,
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _getMessage(score),
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                fontFamily: "Naveid",
                                fontSize: 32,
                              ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "$score",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 50,
                                  ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              "نقطة",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(thickness: 5, color: AppColors.primary),
                const SizedBox(height: 16),
                Text(
                  endMessage[messageIndex],
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        height: 2,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                // Re game Button(),
                Center(
                  child: CircleButtonWidget(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ));
                    },
                    icon: FontAwesomeIcons.repeat,
                    radius: 60,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
