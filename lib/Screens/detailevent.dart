import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbmediaevent_tsa/Screens/registerevent.dart';

class DetailEvent extends StatefulWidget {
  @override
  _DetailEventScreenState createState() => _DetailEventScreenState();
}

class _DetailEventScreenState extends State<DetailEvent> {

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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                child: Icon(Icons.arrow_back_ios)),
                Padding(padding: EdgeInsets.only(top: 30)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/event.png",
                          width: 350, height: 190, fit: BoxFit.fill),
                      Padding(padding: EdgeInsets.only(top: 17)),
                      Text(
                        'Navigating ESG for Sustainable Future',
                        textAlign: TextAlign.center,
                        style: detailevent,
                      )
                  ],
                ),  
                Padding(padding: EdgeInsets.only(top: 25)),
                Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Zoom Meeting',
                              style: news,
                            ),
                            Text(
                              'Selasa, 04 April 2022',
                              style: news,
                            ),
                            Padding(padding: EdgeInsets.only(top: 15)),
                          ],
                        ),
                      ],
                    ),
                     Padding(padding: EdgeInsets.only(top: 15)),
                Text(
                  'About',
                  style: TextStyle(
                      color: darkBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                   Text(
                  'ESG (Environment, Social, and Governance) merupakan suatu kriteria operasional perusahaan yang dapat mendukung terciptanya masa depan berkelanjutan. Seiring dengan penerapan kriteria ESG sebagai pemberian investasi, perusahaan akan berupaya untuk menciptakan nilai pada ketiga faktor meliputi, lingkungan, sosial, dan tata kelola. Proses bisnis perusahaan dengan menerapkan kriteria ESG nantinya akan berkontribusi terhadap terciptanya nilai positif untuk masa depan yang berkelanjutan. ',
                   textAlign: TextAlign.justify,
                  style: desc,),
                   Padding(padding: EdgeInsets.only(top: 25)),
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
                                  return RegisterEventScreen();
                                },
                              ),
                            );
                              },
                              child: Text(
                                "Registrasi",
                                style: TextStyle( fontSize: 12,
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
