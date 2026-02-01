import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid Layout Page")),
      body: 
      GridView.count(crossAxisCount: 2,
      children: [
        Container(color: Colors.red,margin: EdgeInsets.all(8)),
        Container(color: Colors.yellow,margin: EdgeInsets.all(8)),
        Container(color: Colors.blue,margin: EdgeInsets.all(8),)
      ],
      ),
      
    );
  }
}
