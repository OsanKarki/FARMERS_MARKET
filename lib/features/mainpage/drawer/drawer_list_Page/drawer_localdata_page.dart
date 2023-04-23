import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/dropdown.dart';
import 'package:flutter/material.dart';

import '../../../../drawer_screen.dart';


class DrawerLocalDataPage extends StatelessWidget {

  static const route = 'DrawerLocalDataPage';
  const DrawerLocalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: MyDrawerNew(selectedIndex: 1,),
      appBar: PrimaryAppBar(),

      body: Column(
        children: [
          ChildrenTextField(),
          Text('Local data Page',style: TextStyle(fontSize: 30),),
        ],
      ),

    );
  }
}
