// import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/quiz/data/model/question_model.dart";

import "package:islamic_quiz/features/quiz/presentation/view_model/question_provider.dart";
import "package:islamic_quiz/features/quiz/presentation/view_model/quiz_provider.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/progress.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/question.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/score_widget.dart";
import "package:islamic_quiz/features/quiz/presentation/views/widgets/timer.dart";
import "package:islamic_quiz/features/timer/presentation/view_model/timer_provider.dart";

class QuizView extends ConsumerWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // int index = ref.watch(quizIndexProvider);

    return const Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 50),
          ScoreWidget(),
          SizedBox(height: 32),
          TimerWidget(),
          SizedBox(height: 32),
          Progress(),
          SizedBox(height: 32),
          QuestionWidget(),
        ],
      ),
    );
    // return Scaffold(
    //   body: question.when(
    //     data: (data) => _buildQuiz(data),
    //     error: (e, st) {
    //       debugPrint(st.toString());
    //       return Center(
    //         child: Text(
    //           e.toString(),
    //           style: const TextStyle(
    //             color: Colors.white,
    //           ),
    //         ),
    //       );
    //     },
    //     loading: () => const Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   ),
    // );
  }

  // Widget _buildQuiz(QuestionModel? question) {
  //   return Padding(
  //     padding: const EdgeInsets.all(16.0),
  //     child: Center(
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           const ScoreWidget(),
  //           const SizedBox(height: 32),
  //           const TimerWidget(),
  //           const SizedBox(height: 32),
  //           Progress(questionNo: question!.level),
  //           const SizedBox(height: 32),
  //           QuestionWidget(
  //             question: question,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
