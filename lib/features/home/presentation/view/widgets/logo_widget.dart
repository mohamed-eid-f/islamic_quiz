import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

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
          fontSize: size ?? 40.r,
          // fontFamily: "Naveid",
          shadows: [
            Shadow(
              offset: Offset(4.r, 4.r),
              color: Colors.grey,
              blurRadius: 10,
            ),
            Shadow(
              offset: Offset(2.r, 2.r),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
