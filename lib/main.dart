import "dart:async";

import "package:flutter/services.dart";

import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:islamic_quiz/app_localizations.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:islamic_quiz/features/splash/presentation/views/splash_view.dart";
import "core/theme/app_theme.dart";

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<QuestionModel>("questions");
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(MobileAds.instance.initialize());

  await ScreenUtil.ensureScreenSize();

  // 1440 X 2560
  // flutter: 3.16.6

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: "Islamic Quiz",
      theme: appThemeData,
      navigatorKey: navigatorKey,
      home: const SplashView(),
    );
  }
}
