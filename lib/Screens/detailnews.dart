import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailNews extends StatefulWidget {
  @override
  _DetailNewsScreenState createState() => _DetailNewsScreenState();
}

class _DetailNewsScreenState extends State<DetailNews> {

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
                      'Prokus',
                      style: title,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Padding(padding: EdgeInsets.only(top: 25)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/news.png",
                          width: 320, height: 150, fit: BoxFit.fill),
                      Padding(padding: EdgeInsets.only(top: 17)),
                      Text(
                        'Olahkarsa menggelar webinar dengan tema Multistakeholder Partnership dalam Program Kewirausahaan Sosial pada Sabtu, 26 Februari 2022. Webinar yang dilaksanakan secara online ini bertujuan untuk menjadi wadah diskusi antara narasumber dengan audiens, serta berbagi cerita kegiatan mentoring Program Kewirausahaan Sosial di Kabupaten Indramayu.',
                        textAlign: TextAlign.justify,
                        style: news,
                      )
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
