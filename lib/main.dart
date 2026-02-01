import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/Layouts/interactive_profile_card.dart';
import 'package:flutter_practice/pages/Layouts/profile_card.dart';
import 'package:flutter_practice/pages/Layouts/wrap_layout.dart';
import 'package:flutter_practice/pages/SimpleApps/to_do_page.dart';
import 'pages/Layouts/grid_layout.dart';
import 'pages/basic_page.dart';
import 'pages/state_page.dart';
import 'pages/Layouts/stack_layout.dart';
import 'pages/Layouts/row_colomn.dart';
import 'pages/Layouts/list_view_layout.dart';
import 'pages/api_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Playground')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Basics'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BasicsPage()),
            ),
          ),
          ListTile(
            title: const Text('State Management'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StatePage()),
            ),
          ),
          ListTile(
            title: const Text('API Practice'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ApiPage()),
            ),
          ),
          ListTile(
  title: const Text('Grid Layout'),
  onTap: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const GridLayout()),
  ),
),
 ListTile(
            title: const Text('Stack Layout'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StackLayout()),
            ),
          ),
ListTile(
  title: const Text('Row & Column Layout'),
  onTap: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const RowColomn()),
  ),
),
ListTile(
  title: const Text("List View Page"),
  onTap:()=> Navigator.push(
    context,
     MaterialPageRoute(builder: (_)=> const ListviewLayout())
     ) ,
),
ListTile(
  title: Text("Wrap Layout"),
  onTap: () => Navigator.push(
    context,MaterialPageRoute(builder: (_)=>const WrapLayout())
  ),
),
ListTile(
  title: Text("Profile Page"),
  onTap: ()=> Navigator.push(context, 
  MaterialPageRoute(builder: (_)=> const ProfileCard()) 
  ),
),
ListTile(
  title: Text("Interactive Profile"),
  onTap:()=> Navigator.push(context,
  MaterialPageRoute(builder: (_)=> const InteractiveProfileCard())),
),
ListTile(
  title: Text("TO-Do APP"),
  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>const ToDoPage())),
)
        ],
      ),
    );
  }
}