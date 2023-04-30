// import 'package:agriculture_app/features/bottom_nav_bar/bnb_user_page.dart';
// import 'package:flutter/material.dart';
//
// import '../../features/bottom_nav_bar/bnb_market_page.dart';
// import '../../features/mainpage/home_page/farmer_homepage.dart';
//
// class MyNavigationBar extends StatefulWidget {
//   final List<NavigationDestination> destinations;
//   final NavigationDestinationLabelBehavior? labelBehavior;
//   final int selectedIndex;
//   final void Function(int index) onItemTap;
//   final Color? backgroundColor;
//
//   const MyNavigationBar({
//     Key? key,
//     required this.onItemTap,
//     required this.destinations,
//     this.selectedIndex = 0,
//     this.backgroundColor,
//     this.labelBehavior,
//   }) : super(key: key);
//
//   @override
//   State<MyNavigationBar> createState() => _MyNavigationBarState();
// }
//
// class _MyNavigationBarState extends State<MyNavigationBar> {
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return NavigationBar(
//
//       labelBehavior: widget.labelBehavior,
//       animationDuration: const Duration(seconds: 3),
//       backgroundColor: widget.backgroundColor,
//       selectedIndex: index,
//       onDestinationSelected: ( index)=>
//       setState(() =>this.index = index),
//       destinations: widget.destinations,
//     );
//   }
// }
