import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/3481556/pexels-photo-3481556.jpeg?auto=compress&cs=tinysrgb&w=600"),
          ),
          title: const Text("Darling"),
          subtitle: index == 0
              ? const Text("You have missed audio call")
              : const Text("called time 15:00 m"),
          trailing: index == 0
              ? const Icon(Icons.phone)
              : const Icon(Icons.video_call),
        );
      },
    );
  }
}
