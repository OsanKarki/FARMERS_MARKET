import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import 'package:agriculture_app/features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import 'package:agriculture_app/features/mainpage/home_page/home_page.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/drawer_list_tile.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

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
            text: 'home',
            imageAsset: 'assets/home.png',
            onTap: () {
              Navigator.pushNamed(context, HomePage.route);

            },
          ),
          DrawerListTile(
            text: 'Local Data',
            imageAsset: 'assets/duckicon.png',
            onTap: () {
              Navigator.pushNamed(context, DrawerLocalDataPage.route);
            },
          ),
          DrawerListTile(
            text: 'Send to Server',
            imageAsset: 'assets/cloud.png',
            onTap: () {
              Navigator.pushNamed(context, DrawerSendtoServerPage.route);
            },
          ),
          DrawerListTile(
            text: 'Settings',
            imageAsset: 'assets/setting.png',
            onTap: () {
              Navigator.pushNamed(context, DrawerSettingPage.route);

            },
          ),
          const SizedBox(
            height: 300,
          ),
          DrawerListTile(
            text: 'Logout',
            imageAsset: 'assets/logout.png',
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
