import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_Page.dart';
import 'package:flutter/material.dart';

class DrawerSendtoServerPage extends StatelessWidget {
  static const route = 'DrawerSendtoServerPage';
  const DrawerSendtoServerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: NavBar(),
      appBar: PrimaryAppBar(),
      body: Center(
          child: Text(
        'send to server',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
