import "package:flutter/material.dart";

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
    this.size,
  });
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "اختبر معلوماتك\nالإسلامية",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: size ?? 40,
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
    );
  }
}
