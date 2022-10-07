import 'package:sbmediaevent_tsa/Screens/event.dart';
import 'package:sbmediaevent_tsa/Screens/home.dart';
import 'package:sbmediaevent_tsa/Screens/news.dart';
import 'package:sbmediaevent_tsa/Screens/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final screen = [
    HomeScreen(),
    NewsScreen(),
    EventScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
           selectedIconTheme: IconThemeData(color: Color(0xFFFFFFFF), size: 35),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: '#40A57C'.toColor(),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFFB7BEF5),
        // currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "HomeScreen",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "NewsScreen",
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            label: "EventScreen",
            icon: Icon(FontAwesomeIcons.calendar),
          ),
          BottomNavigationBarItem(
            label: "ProfileScreen",
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}