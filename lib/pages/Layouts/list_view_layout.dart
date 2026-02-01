import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
class ListviewLayout extends StatelessWidget {
  const ListviewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View Page")),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text("${index + 1}")),
            title: Text("Item Number : ${index + 1}"),
            subtitle: const Text("Tap to View Details"),
            trailing: const Icon(Icons.arrow_forward_ios),

// Inside your ListTile:
onTap: () {
  Fluttertoast.showToast(
    msg: "Tapped on Item ${index + 1}",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM, // Position: BOTTOM, CENTER, or TOP
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
},

          );
        },
      ),
    );
  }
}
