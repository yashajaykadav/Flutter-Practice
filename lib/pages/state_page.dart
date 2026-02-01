import 'package:flutter/material.dart';

class StatePage extends StatelessWidget{
  const StatePage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Page")),
      body: const Center(
        child: Text(
          "This is State Page",
          style:TextStyle(fontSize: 20) ,
        ),
      ),
    );
  }
}