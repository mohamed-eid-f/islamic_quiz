import "dart:io";

import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/question_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/score_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/timer.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            50.verticalSpace,
            ScoreWidget(),
            32.verticalSpace,
            TimerWidget(),
            32.verticalSpace,
            // Progress(),
            Expanded(child: QuestionWidget()),
            AdmobBannerWidget(),
          ],
        ),
      ),
    );
  }
}

class AdmobBannerWidget extends StatefulWidget {
  const AdmobBannerWidget({
    super.key,
  });

  /// The requested size of the banner. Defaults to [AdSize.banner].

  @override
  State<AdmobBannerWidget> createState() => _AdmobBannerWidgetState();
}

class _AdmobBannerWidgetState extends State<AdmobBannerWidget> {
  late AdSize adSize;
  BannerAd? _bannerAd;

  final String adUnitId = Platform.isAndroid
      // Use this ad unit on Android...

      ? "ca-app-pub-3940256099942544/9214589741" // test
      // ? "ca-app-pub-2750684500976687/7002601664" // original
      // ... or this one on iOS.
      : "ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx";

  @override
  void initState() {
    super.initState();
    adSize = AdSize.banner;
    _loadAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: adSize.width.toDouble(),
      height: adSize.height.toDouble(),
      child: _bannerAd == null
          // Nothing to render yet.
          ? SizedBox()
          // The actual ad.
          : AdWidget(ad: _bannerAd!),
    );
  }

  void _loadAd() {
    _bannerAd = BannerAd(
      size: adSize,
      adUnitId: adUnitId,
      request: const AdRequest(),
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, error) {
          debugPrint("BannerAd failed to load: $error");
          ad.dispose();
        },
      ),
    );

    // Start loading.
    _bannerAd!.load();
  }
}
