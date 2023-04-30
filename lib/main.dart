import 'package:agriculture_app/features/auth/login_page/farmer_login_page/farmer_login_page.dart';
import 'package:agriculture_app/features/auth/signup_page/otp_verification_page.dart';
import 'package:agriculture_app/features/auth/signup_page/set_password_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import 'package:agriculture_app/features/auth/signup_page/address_detail_page.dart';
import 'package:agriculture_app/features/auth/signup_page/personal_details_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/Government_home_page/government_homePage.dart';
import 'package:agriculture_app/features/mainpage/home_page/farmer_home_page/farmer_homepage.dart';
import 'package:flutter/material.dart';

import 'features/auth/login_page/government_login_page/Government_login_page.dart';
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
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 15, color: Colors.black))),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.route,
      routes: {
        WelcomePage.route: (context) => const WelcomePage(),
        FarmerLoginPage.route: (context) => const FarmerLoginPage(),
        GovernmentLoginPage.route: (context) => const GovernmentLoginPage(),
        SignUpPage.route: (context) => const SignUpPage(),
        FarmerHomePage.route: (context) => const FarmerHomePage(),
        GovernmentHomePage.route: (context) => const GovernmentHomePage(),
        OtpVerificationPage.route: (context) => const OtpVerificationPage(),
        SetPasswordPage.route: (context) => const SetPasswordPage(),
        AddressDetailsPage.route: (context) => const AddressDetailsPage(),
        PersonalDetailsPage.route: (context) => const PersonalDetailsPage(),
        CitizenshipDetailsPage.route: (context) =>
            const CitizenshipDetailsPage(),
        DrawerLocalDataPage.route: (context) => const DrawerLocalDataPage(),
        DrawerSendtoServerPage.route: (context) =>
            const DrawerSendtoServerPage(),
        DrawerSettingPage.route: (context) => const DrawerSettingPage(),
      },
    );
  }
}
