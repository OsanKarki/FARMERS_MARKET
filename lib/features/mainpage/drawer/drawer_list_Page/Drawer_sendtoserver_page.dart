import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:flutter/material.dart';

import '../drawer_screen.dart';

class DrawerSendtoServerPage extends StatelessWidget {
  static const route = 'DrawerSendtoServerPage';
  const DrawerSendtoServerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const MyDrawerNew(selectedIndex: 2,),
      appBar: PrimaryAppBar(),
      body: Center(
          child: Text(
        'send to server',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
