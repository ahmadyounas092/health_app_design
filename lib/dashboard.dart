import 'package:flutter/material.dart';
import 'package:health_app_design/pages/favorite_page.dart';
import 'package:health_app_design/pages/home_page.dart';
import 'package:health_app_design/pages/gridview_page.dart';
import 'package:health_app_design/pages/profile_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  int selectedIndex = 0; // Track the selected index

  // List of screens to display
  final List<Widget> screens = [
    const HomePage(),
    const GridviewPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex], // Display the selected screen
      bottomNavigationBar: PersistentTabView(
        padding: const EdgeInsets.only(top: 7.5),
        context,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 8.0,
                  offset: const Offset(0, 3)),
            ]),
        controller: _controller,
        screens: screens,
        backgroundColor: Colors.white,
        navBarStyle: NavBarStyle.style6,
        neumorphicProperties: const NeumorphicProperties(),
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            activeColorPrimary: Colors.blue.shade700,
            inactiveColorPrimary: Colors.grey.shade400,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.grid_view_rounded),
            activeColorPrimary: Colors.blue.shade700,
            inactiveColorPrimary: Colors.grey.shade400,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.favorite),
            activeColorPrimary: Colors.blue.shade700,
            inactiveColorPrimary: Colors.grey.shade400,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.person),
            activeColorPrimary: Colors.blue.shade700,
            inactiveColorPrimary: Colors.grey.shade400,
          ),
        ],
      ),
    );
  }
}
