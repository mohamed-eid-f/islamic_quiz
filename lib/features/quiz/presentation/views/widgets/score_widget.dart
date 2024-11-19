import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:islamic_quiz/features/score/presentation/model_view/score_provider/score_provider.dart";

class ScoreWidget extends ConsumerWidget {
  const ScoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final score = ref.watch(scoreProvider);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: IntTween(begin: 0, end: score),
          builder: (context, value, child) => Text(
            "$value",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        // Text(
        //   "$score",
        //   style: Theme.of(context).textTheme.displayLarge!.copyWith(
        //         color: Colors.white,
        //       ),
        // ),
        const SizedBox(width: 8),
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ],
    );
  }
}
