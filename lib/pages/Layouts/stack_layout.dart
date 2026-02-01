import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  const StackLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Layout Page"),),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 300,height: 300,color: Colors.amber),
            Container(width: 200, height: 200, color: Colors.blueGrey),
            Container(width: 150, height: 150, color: Colors.blue),
            const Positioned(
              bottom: 10,
              right: 10,
              child: Icon(Icons.star, color: Colors.white, size: 40),
            ),
            const Positioned(
            top: 15,
            left: 15,child: Icon(Icons.icecream,color: Colors.red,size: 50))
          ],
        ),
      ),
    );
  }
}