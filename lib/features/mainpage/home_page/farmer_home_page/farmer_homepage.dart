import 'package:agriculture_app/core/config/size_config.dart';
import 'package:agriculture_app/core/utils/asset_utils.dart';
import 'package:agriculture_app/core/utils/primary_app_bar.dart';
import 'package:agriculture_app/features/bottom_nav_bar/farmer_bnb/bnb_crops_page.dart';
import 'package:flutter/material.dart';

import '../../../bottom_nav_bar/farmer_bnb/bnb_market_page.dart';
import '../../../bottom_nav_bar/farmer_bnb/bnb_user_page.dart';

class FarmerHomePage extends StatefulWidget {
  static const route = 'HomePage';

  const FarmerHomePage({Key? key}) : super(key: key);

  @override
  State<FarmerHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<FarmerHomePage> {
  int index = 0;
  final screens = [
    const BnBCropsPage(),
    const BnbMarketPage(),
    const BnbUserPage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 85,
        backgroundColor: const Color(0xffA4DACB),
        selectedIndex: index,
        animationDuration: const Duration(seconds: 1),
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: [
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navHome),
            label: 'Your Crops',
          ),
          NavigationDestination(
            icon: buildNavLogo(AssetUtils.navMarket),
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
