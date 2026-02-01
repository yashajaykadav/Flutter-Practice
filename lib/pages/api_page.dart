import 'package:flutter/material.dart';

class ApiPage extends StatelessWidget {
  const ApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API Page")),
      body: const Center(
        child: Text("THis is API PAge"),
      )
    );
  }
}
