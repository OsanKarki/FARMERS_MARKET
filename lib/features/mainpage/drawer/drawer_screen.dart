import 'package:agriculture_app/features/auth/login_page/farmer_login_page/farmer_login_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import 'package:agriculture_app/features/auth/signup_page/address_detail_page.dart';
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
    {'title': 'Logout', 'icon': 'assets/logout.png'},
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
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: widget.selectedIndex == index ? Colors.white : const Color(0xff35BC88),
                      ),
                    ),
                    onTap: () {
                       switch(index){
                         case 0:
                           ///pass different screen
                           Navigator.pushNamed(context, AddressDetailsPage.route);
                           break;
                         case 1:
                           Navigator.pushNamed(context, DrawerLocalDataPage.route);
                           break;
                         case 2:

                               Navigator.pushNamed(context, DrawerSendtoServerPage.route);

                               break;

                         case 3:

                               Navigator.pushNamed(context, DrawerSettingPage.route);
                           break;

                         case 4:

                           Navigator.pushNamed(context, FarmerLoginPage.route);
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

