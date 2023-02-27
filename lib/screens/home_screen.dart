import 'package:flutter/material.dart';
import 'package:whatsappui/screens/call_screen.dart';
import 'package:whatsappui/screens/chat_screen.dart';
import 'package:whatsappui/screens/status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.group),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text("New Group"),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text("New Broadcast"),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Linked devices"),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Starred messages"),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text("Payments"),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text("Setting"),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: const TabBarView(children: [
            Icon(Icons.group),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ]),
        ));
  }
}
