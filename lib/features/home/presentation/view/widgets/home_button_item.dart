import "package:flutter/material.dart";

class HomeButtonItem extends StatelessWidget {
  const HomeButtonItem({
    super.key,
    required this.title,
    required this.navTo,
  });
  final String title;
  final Widget navTo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => navTo));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: Text(title, style: Theme.of(context).textTheme.displayLarge),
        ),
      ),
    );
  }
}
