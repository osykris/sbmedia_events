import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Welcome to sbmedia.id!',
                  style: title,
                ),
                
              ],
            ),   
          ],
        ),
      ))),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: purple, size: 35),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xffF4F6F9),
        unselectedItemColor: const Color(0xFFB7BEF5),
        // currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_sharp),
            label: 'Document',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}