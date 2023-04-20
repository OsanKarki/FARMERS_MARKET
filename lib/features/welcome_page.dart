import 'package:agriculture_app/features/auth/login_page.dart';
import 'package:agriculture_app/features/auth/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/button.dart';

class WelcomePage extends StatelessWidget {
  static const route = 'WelcomePage';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
   final height = size.height;
  final  width = size.width;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(21, 120, 21, 0),
          child: SvgPicture.asset(
            "assets/frontimage.svg",

            height: height*0.35,
            width: width*0.35,
          ),
        ),
        SizedBox(
          height: height*0.035,
        ),
        const Text(
          'Dive into the Agriculture',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ), //dive text

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 65, vertical: 30),
          child: Text(
            'This app will collect the information of all farmers and helps them for the better improvement in farming',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ), //paragraph text
        Container(
          width: double.infinity,
          height: 80,
          color: const Color(0xff0B7E7F),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              ButtonWidgets(
                text: 'Login', onPressed: () {
                  Navigator.pushNamed(context, LoginPage.route);
              }, borderRadius: null,
              ),//login-button
              ButtonWidgets(
                text: 'Signup', onPressed: () {
                  Navigator.pushNamed(context, SignUpPage.route);
              }, borderRadius: null,
              ),//signup button
            ],
          ),
        )
      ],
    ));
  }
}
