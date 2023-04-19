import 'package:flutter/material.dart';

import '../../core/utils/primary_app_bar.dart';
import 'drawer/drawer_Page.dart';

class HomePage extends StatelessWidget {

  static const route = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer:  NavBar(),
      appBar: PrimaryAppBar(),
      
      
      body: Center(child: Text('Home page',style: TextStyle(fontSize: 30),)),

    );
  }
}
