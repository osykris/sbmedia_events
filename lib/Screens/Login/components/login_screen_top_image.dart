import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 8,
              child: Image.asset("assets/images/logo.png",  width: 300,             
              height: 80,
              fit:BoxFit.fill),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          "Sign In",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}