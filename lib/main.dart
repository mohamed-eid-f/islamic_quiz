import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:islamic_quiz/app_localizations.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";
import "package:islamic_quiz/features/quiz/data/repository/database_manager.dart";
import "package:islamic_quiz/features/quiz/data/repository/hive_questions_repo.dart";
import "package:islamic_quiz/features/quiz/presentation/view_model/question_repository_provider.dart";
import "package:islamic_quiz/features/quiz/presentation/views/quiz_view.dart";
import "package:islamic_quiz/features/quiz/presentation/views/test_view.dart";

import "core/theme/app_theme.dart";

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<QuestionModel>("questions");

  runApp(
    const ProviderScope(
      // overrides: [
      //   questionsRepositoryProvider.overrideWithValue(HiveQuestionsRepository())
      // ],

      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      home: const QuizView(),
    );
  }
}
