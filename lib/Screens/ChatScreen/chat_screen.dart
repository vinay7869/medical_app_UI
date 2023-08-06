import 'package:flutter/material.dart';
import 'package:medical_app/Screens/ChatScreen/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 1),
          child: Text(
            'Chat',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ))
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(
          children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      constraints: const BoxConstraints(maxHeight: 50),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.white)),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 27,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search here'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white),
                child: const Icon(Icons.wifi_protected_setup),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const ChatList()
        ]),
      ),
    );
  }
}
