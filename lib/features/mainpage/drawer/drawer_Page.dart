import 'package:agriculture_app/features/auth/login_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/drawer_list_tile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: ListView(children: [
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

          DrawerListTile(
        onTap: () {
      _onItemTapped(1);
      Navigator.pushNamed(context, HomePage.route);


            },
            isActive: _selectedIndex == 0,
            text: 'home',
            imageAsset: 'assets/home.png',

          ),
          DrawerListTile(
            isActive: _selectedIndex == 1,
            text: 'Local Data',
            imageAsset: 'assets/duckicon.png',
            onTap: () {
              _onItemTapped(1);
              Navigator.pushNamed(context, DrawerLocalDataPage.route);


            },

          ),
          DrawerListTile(
            isActive: _selectedIndex == 2,
            text: 'Send to Server',
            imageAsset: 'assets/cloud.png',
            onTap: () {
              _onItemTapped(2);
              Navigator.pushNamed(context, DrawerSendtoServerPage.route);


            },
          ),
          DrawerListTile(
            isActive: _selectedIndex == 3,
            text: 'Settings',
            imageAsset: 'assets/setting.png',
            onTap: () {
              _onItemTapped(3);
              Navigator.pushNamed(context, DrawerSendtoServerPage.route);


            },
          ),
          const SizedBox(
            height: 300,
          ),
          DrawerListTile(
            isActive:_selectedIndex == 4,
            text: 'Logout',
            imageAsset: 'assets/logout.png',
            onTap: () {
              _onItemTapped(4);
              Navigator.pushNamed(context, LoginPage.route);


            },
          ),
        ]),
      ),
    );
  }
}
