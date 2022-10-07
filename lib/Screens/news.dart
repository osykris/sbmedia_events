import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbmediaevent_tsa/Screens/detailnews.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

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
                  'News',
                  style: title,
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Padding(padding: EdgeInsets.only(top: 25)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/news.png",
                        width: 190, height: 100, fit: BoxFit.fill),
                        Padding(padding: EdgeInsets.only(right: 20)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prokus',
                              style: TextStyle(
                                  color: darkBlue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
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
                                  return DetailNews();
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
