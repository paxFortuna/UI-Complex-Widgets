import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_complex_widget/src/pages/orders_page.dart';
import 'package:ui_complex_widget/src/pages/profile_page.dart';

import 'pages/home_page.dart';
import 'pages/search_page.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  final screens = [
    HomePage(),
    SearchPage(),
    OrdersPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 234, 234, 234),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: GNav(
            color: Color.fromARGB(255, 92, 91, 91),
            activeColor: Colors.white,
            haptic: true,
            gap: 8,
            tabBorderRadius: 25,
            tabBackgroundColor: Color.fromARGB(255, 46, 47, 46),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            selectedIndex: currentIndex,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconSize: 30,
                onPressed: () {
                  setState(() => {currentIndex = 0});
                },
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                iconSize: 30,
                onPressed: () {
                  setState(() => {currentIndex = 1});
                },
              ),
              GButton(
                icon: Icons.list,
                text: 'Orders',
                iconSize: 30,
                onPressed: () {
                  setState(() => {currentIndex = 2});
                },
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
                iconSize: 30,
                onPressed: () {
                  setState(() => {currentIndex = 3});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
