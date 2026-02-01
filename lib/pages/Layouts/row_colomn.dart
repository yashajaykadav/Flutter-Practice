import 'package:flutter/material.dart';

class RowColomn extends StatelessWidget {
  const RowColomn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row-column Layout Page")),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.red,margin: EdgeInsets.all(8))),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.red,margin: EdgeInsets.all(8))),
              Expanded(child: Container(color: Colors.green,margin: EdgeInsets.all(8))),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color:Colors.red,margin: EdgeInsets.all(8))),
              Expanded(child: Container(color:Colors.green,margin: EdgeInsets.all(8))),
              Expanded(child: Container(color: Colors.blue,margin: EdgeInsets.all(8))),
            ],
          )),
        ],
        
      ),
    );
  }
}
