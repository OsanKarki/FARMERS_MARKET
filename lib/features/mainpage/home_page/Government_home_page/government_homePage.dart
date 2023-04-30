import 'package:agriculture_app/features/bottom_nav_bar/Government_bnb/bnb_farmerinfo_page.dart';
import 'package:agriculture_app/features/bottom_nav_bar/Government_bnb/bnb_selfuser_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/size_config.dart';
import '../../../../core/utils/asset_utils.dart';
import '../../../../core/utils/primary_app_bar.dart';
import '../../../bottom_nav_bar/Government_bnb/bnb_pushnotification.dart';

class GovernmentHomePage extends StatefulWidget {

  static const route ='GovernmentHomePage';
  const GovernmentHomePage({Key? key}) : super(key: key);

  @override
  State<GovernmentHomePage> createState() => _GovernmentHomePageState();
}

class _GovernmentHomePageState extends State<GovernmentHomePage> {
  int index = 0;
  final screens = [
    const BnbFarmerPage(),
    const BnbPushNotificationPage(),
    const BnbSelfuserPage()
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height:85,
        backgroundColor: const Color(0xffA4DACB),
        selectedIndex: index,
        animationDuration: const Duration(seconds: 1),
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: [
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navFarmer),
            label: 'Your Crops',

          ),
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navPushNotification),

            label: 'Market',
          ),
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navUser),
            label: 'User',

          ),

        ],

      ),
      appBar: PrimaryAppBar(
        backgroundColor: const Color(0xffA4DACB),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: SizeConstants.horizontalSpacing),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                // print('@@@@@@@@@@@@@');
              },
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: screens[index],




    );
  }
  Image buildNavLogo(String imagePath) => Image.asset(
    imagePath,
    height: 30,
  );
}
