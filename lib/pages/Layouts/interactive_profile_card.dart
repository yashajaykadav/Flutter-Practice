import 'package:flutter/material.dart';

class InteractiveProfileCard extends StatefulWidget {
  const InteractiveProfileCard({super.key});

  @override
  State<InteractiveProfileCard> createState() => _InteractiveProfileCardState();
}

class _InteractiveProfileCardState extends State<InteractiveProfileCard> {
  // 1. Define the state variable
  bool isFollowing = false;

  void toggleFollow() {
    // 2. Wrap the change in setState to trigger a UI rebuild
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(radius: 40, backgroundColor: Colors.blueGrey),
              const Text("Yash Kadav", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              
              const SizedBox(height: 10),
              
              // 3. Conditional UI based on state
              ElevatedButton(
                onPressed: toggleFollow,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isFollowing ? Colors.grey : Colors.blue,
                ),
                child: Text(
                  isFollowing ? "Unfollow" : "Follow",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}