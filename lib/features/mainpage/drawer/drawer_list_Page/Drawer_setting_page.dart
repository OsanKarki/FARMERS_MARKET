import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_Page.dart';
import 'package:flutter/material.dart';

class DrawerSettingPage extends StatelessWidget {
  static const route = 'DrawerSettingPage';
  const DrawerSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: NavBar(),
      appBar: PrimaryAppBar(),

      body: Center(child: Text('Drawer Setting Page',style: TextStyle(fontSize: 30),)),
    );
  }
}
