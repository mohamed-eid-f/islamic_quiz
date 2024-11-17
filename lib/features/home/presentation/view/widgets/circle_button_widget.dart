import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({
    super.key,
    required this.icon,
    this.radius = 40,
    this.onTap,
  });
  final IconData icon;
  final double radius;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: Colors.blue,
          shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 20,
            ),
          ],
        ),
        child: Container(
          height: radius * 2,
          width: radius * 2,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.blue,
                width: radius * 0.1,
              ),
            ),
          ),
          child: Center(
            child: FaIcon(
              icon,
              size: radius * 0.8,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
