import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbmediaevent_tsa/Screens/historyevent.dart';
import 'package:sbmediaevent_tsa/Screens/certificate.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                  'Hi, Osy Krisdayanti!',
                  style: title,
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: Column(
                    children: [
                      Image.asset("assets/images/banner.png",
                          width: 320, height: 150, fit: BoxFit.fill)
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: Row(
                    children: [
                      Container(
                        width: 150,
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
                                  return HistoryEventScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "History Event",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 16)),
                      Container(
                        width: 150,
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
                                  return CertificateScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Certificate",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 14,
                              color:light,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                           Padding(padding: EdgeInsets.only(top: 10)),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onChanged: (value) {
                    // do something
                  },
                ),
                 Padding(padding: EdgeInsets.only(top: 16)),
                Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 14,
                              color:light,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                           Padding(padding: EdgeInsets.only(top: 10)),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onChanged: (value) {
                    // do something
                  },
                ),
                 Padding(padding: EdgeInsets.only(top: 16)),
                Text(
                            "Phone",
                            style: TextStyle(
                              fontSize: 14,
                              color:light,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                   Padding(padding: EdgeInsets.only(top: 10)),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onChanged: (value) {
                    // do something
                  },
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 35,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: '#40A57C'.toColor(),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Update",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 16)),
                      Container(
                        width: 150,
                        height: 35,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: '#40A57C'.toColor(),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Log Out",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
