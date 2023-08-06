import 'package:flutter/material.dart';
import 'package:medical_app/Screens/ChatScreen/chat_screen.dart';
import 'Screens/HomeScreen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey.shade100),
      home: const BottomNavItem(),
    );
  }
}

class BottomNavItem extends StatefulWidget {
  const BottomNavItem({super.key});

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  int _currentIndex = 0;
  List<Widget> tabs = const [HommePage(), ChatScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.app_registration_outlined), label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(child: Icon(Icons.add)), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
