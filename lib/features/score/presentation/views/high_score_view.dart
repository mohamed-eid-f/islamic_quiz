import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:islamic_quiz/core/consts/app_colors.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/circle_button_widget.dart";
import "package:islamic_quiz/features/home/presentation/view/widgets/logo_widget.dart";
import "package:islamic_quiz/features/score/presentation/model_view/score_provider/score_provider.dart";
import "package:islamic_quiz/features/score/presentation/views/widgets/high_score_item_widget.dart";

class HighScoreView extends StatelessWidget {
  const HighScoreView({super.key, required this.highScoresList});
  final List<String> highScoresList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 64),
            const LogoWidget(size: 30),
            const SizedBox(height: 8),
            Text(
              "قائمة أعلى الدرجات",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: highScoresList.isEmpty
                  ? Center(
                      child: Text(
                        "لا يوجد اي درجات مسجلة حتى الآن\nقم بإجراء اختبار لتسجيل درجاتك هنا",
                        style: Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return HighScoreItemWidget(
                          text: highScoresList[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemCount: highScoresList.length,
                    ),
            ),
            const SizedBox(height: 32),
            CircleButtonWidget(
              icon: FontAwesomeIcons.handPointLeft,
              onTap: () {
                Navigator.of(context).pop();
              },
              // radius: 4,
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
