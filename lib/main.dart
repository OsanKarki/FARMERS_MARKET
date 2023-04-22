import 'package:agriculture_app/features/auth/login_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page2.dart';
import 'package:flutter/material.dart';

import 'features/auth/sign_up_page.dart';
import 'features/mainpage/home_page/home_page3.dart';
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

      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.route,
      routes: {
        WelcomePage.route: (context) => const WelcomePage(),
        LoginPage.route: (context) => const LoginPage(),
        SignUpPage.route: (context) => const SignUpPage(),
        HomePage.route:(context) => const HomePage(),
        HomePage2.route:(context) => const HomePage2(),
        HomePage3.route:(context) =>  const HomePage3(),
        DrawerLocalDataPage.route:(context)=>  const DrawerLocalDataPage(),
        DrawerSendtoServerPage.route:(context)=>  const DrawerSendtoServerPage(),
        DrawerSettingPage.route:(context)=>  const DrawerSettingPage(),

      },
    );
  }
}
