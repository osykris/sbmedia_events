import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbmediaevent_tsa/Screens/detailevent.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {

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
                  'Events',
                  style: title,
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
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
                                  fontSize: 16),
                            ),
                            Padding(padding: EdgeInsets.only(top: 15)),
                            Text(
                              'Zoom Meeting',
                              style: news,
                            ),
                            Text(
                              'Selasa, 04 April 2022',
                              style: news,
                            ),
                            Padding(padding: EdgeInsets.only(top: 15)),
                            Container(
                               width: 100,
                              height: 35,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: '#40A57C'.toColor(),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailEvent();
                                },
                              ),
                            );
                              },
                              child: Text(
                                "Detail",
                                style: TextStyle( fontSize: 12,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
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
    );
  }
}
