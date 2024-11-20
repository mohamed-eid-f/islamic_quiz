import "dart:io";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/question_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/score_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/timer.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";

class QuizView extends ConsumerStatefulWidget {
  /// The requested size of the banner. Defaults to [AdSize.banner].
  final AdSize adSize;

  /// The AdMob ad unit to show.
  ///
  /// TODO: replace this test ad unit with your own ad unit
  final String adUnitId = Platform.isAndroid
      // Use this ad unit on Android...
      ? "ca-app-pub-2750684500976687/7002601664"
      // ... or this one on iOS.
      : "ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx";
  QuizView({
    super.key,
    this.adSize = AdSize.banner,
  });
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuizViewState();
}

class _QuizViewState extends ConsumerState<QuizView> {
  BannerAd? _bannerAd;
  @override
  Widget build(BuildContext context) {
    /// The banner ad to show. This is `null` until the ad is actually loaded.
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 50),
            ScoreWidget(),
            SizedBox(height: 32),
            TimerWidget(),
            SizedBox(height: 32),
            // Progress(),
            SizedBox(height: 32),
            QuestionWidget(),
            SizedBox(
              width: widget.adSize.width.toDouble(),
              height: widget.adSize.height.toDouble(),
              child: _bannerAd == null
                  // Nothing to render yet.
                  ? SizedBox()
                  // The actual ad.
                  : AdWidget(ad: _bannerAd!),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  /// Loads a banner ad.
  void _loadAd() {
    final bannerAd = BannerAd(
      size: widget.adSize,
      adUnitId: widget.adUnitId,
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
    bannerAd.load();
  }
}
