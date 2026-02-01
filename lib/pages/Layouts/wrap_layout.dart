import 'package:flutter/material.dart';

class WrapLayout extends StatelessWidget {
  const WrapLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wrap Layout Page")),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: [
          Chip(label: Text("Flutter")),
          Chip(label: Text("Dart")),
          Chip(label: Text("Java")),
          Chip(label: Text("C++")),
        ],
      ),
    );
  }
}
