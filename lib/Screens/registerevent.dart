import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterEventScreen extends StatefulWidget {
  @override
  _RegisterEventScreenState createState() => _RegisterEventScreenState();
}

class _RegisterEventScreenState extends State<RegisterEventScreen> {
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
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    Text(
                      'Register Event',
                      style: title,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Text(
                  "Name",
                  style: TextStyle(
                      fontSize: 14, color: light, fontWeight: FontWeight.w400),
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
                  "NIK",
                  style: TextStyle(
                      fontSize: 14, color: light, fontWeight: FontWeight.w400),
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
                      fontSize: 14, color: light, fontWeight: FontWeight.w400),
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
                  "Pekerjaan",
                  style: TextStyle(
                      fontSize: 14, color: light, fontWeight: FontWeight.w400),
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
                  "Instansi",
                  style: TextStyle(
                      fontSize: 14, color: light, fontWeight: FontWeight.w400),
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
                Padding(padding: EdgeInsets.only(top: 25)),
                Container(
                  width: 150,
                  height: 40,
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
                            return RegisterEventScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffffffff),
                      ),
                    ),
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
