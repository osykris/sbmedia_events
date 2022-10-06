import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to sbmedia.id!',
                  style: title,
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: Column(
                    children: [
                      Image.asset("assets/images/banner.png",
                          width: 320, height: 150, fit: BoxFit.fill),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        'Indonesia"s No.1 Leading Sustainability Media Platform',
                        style: desc,
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Text(
                  'Top News',
                  style: TextStyle(
                      color: darkBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/new1.png",
                          width: 100, height: 100, fit: BoxFit.fill),
                      Padding(padding: EdgeInsets.only(right: 6)),
                      Image.asset("assets/images/new2.png",
                          width: 100, height: 100, fit: BoxFit.fill),
                      Padding(padding: EdgeInsets.only(right: 6)),
                      Image.asset("assets/images/new3.png",
                          width: 100, height: 100, fit: BoxFit.fill),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Text(
                  'New Event',
                  style: TextStyle(
                      color: darkBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Navigating ESG',
                              style: TextStyle(
                                  color: darkBlue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                            Padding(padding: EdgeInsets.only(top: 15)),
                            Text(
                              'Zoom Meeting',
                              style: desc,
                            ),
                            Text(
                              'Selasa, 04 April 2022',
                              style: desc,
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(right: 55)),
                        Image.asset("assets/images/event.png",
                            width: 160, height: 100, fit: BoxFit.fill),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
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
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "News",
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            label: "Events",
            icon: Icon(FontAwesomeIcons.calendar),
          ),
          BottomNavigationBarItem(
            label: "Login",
            icon: Icon(Icons.login),
          ),
        ],
      ),
    );
  }
}
