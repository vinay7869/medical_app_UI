import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<String> docName = [
    'dr.Yaka Moto',
    'dr.Nobita Iyer',
    'dr.Shizuka Shukla',
    'dr.Gian Gaitonde',
    'dr.Yaka Moto',
    'dr.Nobita Iyer',
    'dr.Shizuka Shukla',
    'dr.Gian Gaitonde',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: docName.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.amber,
            ),
            title: Text(
              docName[index],
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            subtitle: const Text('Hello frnd'),
            trailing: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('7:48 PM'),
                CircleAvatar(
                    backgroundColor: Colors.blue, radius: 10, child: Text('1'))
              ],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            tileColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
