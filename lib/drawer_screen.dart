import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page.dart';
import 'package:flutter/material.dart';

class MyDrawerNew extends StatefulWidget {
  final int selectedIndex;

  const MyDrawerNew({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _MyDrawerNewState createState() => _MyDrawerNewState();
}

class _MyDrawerNewState extends State<MyDrawerNew> {

  List<Map<String, dynamic>> drawerItems = [
    {'title': 'Home', 'icon': 'assets/home.png'},
    {'title': 'Local Data', 'icon':'assets/duckicon.png'},
    {'title': 'Send to Server', 'icon':'assets/cloud.png'},
    {'title': 'Settings', 'icon': 'assets/setting.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color(0xff35BC88),
            ),
            accountName: Text(
              'Asish Mallik',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            accountEmail: Text(
              'AsishMallik@gmail.com',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: widget.selectedIndex == index ? const Color(0xff35BC88) : null,
                  child: ListTile(
                    leading: Image.asset(
                      drawerItems[index]['icon'],
                      color: widget.selectedIndex == index ? Colors.white : const Color(0xff35BC88),
                    ),
                    title: Text(
                      drawerItems[index]['title'],
                      style: TextStyle(
                        color: widget.selectedIndex == index ? Colors.white : const Color(0xff35BC88),
                      ),
                    ),
                    onTap: () {
                       switch(index){
                         case 0:
                           ///pass different screen
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>const HomePage()),
                           );
                           break;
                         case 1:
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>const DrawerLocalDataPage()),
                           );
                           break;
                         case 2:
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>const DrawerSendtoServerPage()),
                           );
                           break;

                         case 3:
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>const DrawerSettingPage()),
                           );
                           break;
                       }
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

