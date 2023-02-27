import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/2869318/pexels-photo-2869318.jpeg?auto=compress&cs=tinysrgb&w=600"),
          ),
          title: Text("Elon Musk"),
          subtitle: Text("Released New Twitter"),
          trailing: Text(
            "01:36 pm",
            style: TextStyle(color: Colors.grey),
          ),
        );
      },
    );
  }
}
