import 'package:flutter/material.dart';

class Task {
  String title;
  bool isCompleted;
  Task(this.title, {this.isCompleted = false});
}

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final List<Task> _tasks = [];
  final TextEditingController _controller = TextEditingController();

  void _addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _tasks.add(Task(_controller.text));
        _controller.clear();
      });
    }
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Task removed")),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo App")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: "Enter Task"),
                  ),
                ),
                ElevatedButton(onPressed: _addTask, child: const Text("Add")),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: _tasks.length,
              separatorBuilder: (_, _) => const Divider(),
              itemBuilder: (context, index) => ListTile(
                leading: Checkbox(
                  value: _tasks[index].isCompleted,
                  onChanged: (value) {
                    setState(() {
                      _tasks[index].isCompleted = value ?? false;
                    });
                  },
                ),
                title: Text(
                  _tasks[index].title,
                  style: TextStyle(
                    decoration: _tasks[index].isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () => _removeTask(index),
                  icon: const Icon(Icons.delete),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}