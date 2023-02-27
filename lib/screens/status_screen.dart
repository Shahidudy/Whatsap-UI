import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 3)),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/2760338/pexels-photo-2760338.jpeg?auto=compress&cs=tinysrgb&w=600"),
            ),
          ),
          title: Text("Baby"),
          subtitle: Text("2 minutes ago"),
        );
      },
    );
  }
}
