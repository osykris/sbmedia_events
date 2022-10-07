import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CertificateScreen extends StatefulWidget {
  @override
  _CertificateScreenState createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen>  {

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
                      'Certificate',
                      style: title,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: Column(
                    children: [
                      Image.asset("assets/images/certificate.png",
                          width: 320, height: 150, fit: BoxFit.fill),
                      Padding(padding: EdgeInsets.only(top: 17)),
                      Text(
                        'Creating Social Impact on Oil & Gas Upstream Sector',
                        style: news,
                      )
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
