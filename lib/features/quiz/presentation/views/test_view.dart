import "package:flutter/material.dart";

class TestView extends StatelessWidget {
  const TestView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TestView"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(120, 25),
              ),
            ),
            child: const Center(
              child: Text("TestView"),
            ),
          ),
        ],
      ),
    );
  }
}
