import "dart:io";
import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/core/consts/consts.dart";
import "package:islamic_quiz/features/home/presentation/view/home_view.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/background_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/circle_button_widget.dart";
import "package:islamic_quiz/features/score/presentation/model_view/score_provider/score_provider.dart";

class EndView extends ConsumerStatefulWidget {
  final int score;
  const EndView({super.key, required this.score});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EndViewState();
}

class _EndViewState extends ConsumerState<EndView> {
  InterstitialAd? _interstitialAd;
  late int random;
  // TODO: replace this test ad unit with your own ad unit.
  final adUnitId = Platform.isAndroid
      ? "ca-app-pub-3940256099942544/1033173712" // test
      // ? "ca-app-pub-2750684500976687/7069818769" // original
      : "ca-app-pub-3940256099942544/4411468910";

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

  /// Loads an interstitial ad.
  void loadAd() {
    InterstitialAd.load(
        adUnitId: adUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          // Called when an ad is successfully received.
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
                // Called when the ad showed the full screen content.
                onAdShowedFullScreenContent: (ad) {},
                // Called when an impression occurs on the ad.
                onAdImpression: (ad) {},
                // Called when the ad failed to show full screen content.
                onAdFailedToShowFullScreenContent: (ad, err) {
                  // Dispose the ad here to free resources.
                  ad.dispose();
                },
                // Called when the ad dismissed full screen content.
                onAdDismissedFullScreenContent: (ad) {
                  // Dispose the ad here to free resources.
                  ad.dispose();
                },
                // Called when a click is recorded for an ad.
                onAdClicked: (ad) {});

            debugPrint("$ad loaded.");
            // Keep a reference to the ad so you can show it later.
            _interstitialAd = ad;
            ad.show();
          },
          // Called when an ad request failed.
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint("InterstitialAd failed to load: $error");
          },
        ));
  }

  @override
  void dispose() {
    if (_interstitialAd != null) {
      _interstitialAd!.dispose();
      print("_interstitialAd disposed");
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    random = Random().nextInt(success_messages.length);
    loadAd();
  }

  @override
  Widget build(BuildContext context) {
    ref.read(scoreProvider.notifier).saveHighScore(widget.score);
    int messageIndex = Random().nextInt(endMessage.length);

    return Scaffold(
      body: BackgroundWidget(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16.0),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: AppColors.secondary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // height: 300,
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _getMessage(widget.score),
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
                              "${widget.score}",
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
                _showSucessMessage(context),
                const SizedBox(height: 16),
                const Divider(thickness: 5, color: AppColors.primary),
                const SizedBox(height: 16),
                Text(
                  endMessage[4],
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

  Widget _showSucessMessage(context) {
    return Text(
      success_messages[random],
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
            height: 2,
            fontSize: 24,
          ),
    );
  }
}
