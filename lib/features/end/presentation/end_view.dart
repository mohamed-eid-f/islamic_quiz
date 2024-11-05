import "dart:developer";

import "package:flutter/material.dart";
import "package:islamic_quiz/core/colors/app_colors.dart";
import "package:islamic_quiz/features/quiz/presentation/views/quiz_view.dart";

class EndView extends StatelessWidget {
  const EndView({super.key});

  @override
  Widget build(BuildContext context) {
    log("END GAME");
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16.0),
          height: 520,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                padding: const EdgeInsets.all(32.0),
                child: Center(
                  child: Text(
                    "انتهى الاختبار",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
              const Divider(thickness: 5, color: AppColors.primary),
              const SizedBox(height: 16),
              Text(
                "حاول الوصول إلى مستويات أعلى في المرة القادمة",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              // Re game Button(),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const QuizView(),
                  ));
                },
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  height: 80,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Center(
                    child: Text(
                      "اعادة الاختبار",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.secondary,
                              ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
