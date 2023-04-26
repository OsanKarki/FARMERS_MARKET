import 'package:agriculture_app/features/auth/login_page/login_page.dart';
import 'package:agriculture_app/features/auth/signup_page/otp_verification_page.dart';
import 'package:agriculture_app/features/auth/signup_page/set_password_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import 'package:agriculture_app/features/auth/signup_page/address_detail_page.dart';
import 'package:agriculture_app/features/auth/signup_page/personal_details_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/homePage_1.dart';
import 'package:flutter/material.dart';

import 'features/auth/signup_page/sign_up_page.dart';
import 'features/auth/signup_page/citizenship_details_page.dart';
import 'features/mainpage/welcome_page/welcome_page.dart';

void main() {
  runApp(const AgricultureApp());
}

class AgricultureApp extends StatelessWidget {
  const AgricultureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            theme: ThemeData(
      navigationBarTheme: NavigationBarThemeData(

        indicatorColor: Colors.white,
        labelTextStyle:MaterialStateProperty.all(const TextStyle(fontSize: 13,color: Colors.white))
      ),
    ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.route,
      routes: {
        WelcomePage.route: (context) => const WelcomePage(),
        LoginPage.route: (context) => const LoginPage(),
        SignUpPage.route: (context) => const SignUpPage(),
        HomePage.route:(context) => const HomePage(),
        OtpVerificationPage.route: (context) => const OtpVerificationPage(),
        SetPasswordPage.route: (context) => const SetPasswordPage(),
        AddressDetailsPage.route:(context) => const AddressDetailsPage(),
        PersonalDetailsPage.route:(context) => const PersonalDetailsPage(),
        CitizenshipDetailsPage.route:(context) =>  const CitizenshipDetailsPage(),
        DrawerLocalDataPage.route:(context)=>  const DrawerLocalDataPage(),
        DrawerSendtoServerPage.route:(context)=>  const DrawerSendtoServerPage(),
        DrawerSettingPage.route:(context)=>  const DrawerSettingPage(),

      },
    );
  }
}
