import "package:flutter/material.dart";

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key, this.size});
  final double? size;

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedTextWidget>
    with TickerProviderStateMixin {
  late Animation<AlignmentGeometry> _textAnimation;
  late AnimationController _texttAnimationController;

  @override
  @override
  void initState() {
    super.initState();

    _texttAnimationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(seconds: 1)); //for parent

    //...........
    _textAnimation = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(_texttAnimationController);

    _texttAnimationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 163,
        child: Stack(
          children: [
            AlignTransition(
              alignment: _textAnimation,
              child: Text(
                "اختبر معلوماتك\nالإسلامية",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: widget.size ?? 40,
                  // fontFamily: "Naveid",
                  shadows: [
                    const Shadow(
                      offset: Offset(4, 4),
                      color: Colors.grey,
                      blurRadius: 10,
                    ),
                    const Shadow(
                      offset: Offset(2, 2),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
