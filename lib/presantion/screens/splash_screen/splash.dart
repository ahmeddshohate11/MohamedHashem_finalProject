import 'package:flutter/material.dart';
import 'package:graduationproject/presantion/screens/home_screen/home_screen.dart';

import '../Login_screen/login_page.dart';
import '../info_screen/info_screen.dart';
import '../signup_screen/signup_screen.dart';

class splash extends StatefulWidget {
  splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  int _selectedIndex = 0; //New

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        items: _navBarsItems(),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

List<BottomNavigationBarItem> _navBarsItems() {
  return [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(
      icon: Icon(Icons.phone),
      label: "ConttactUs",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "User",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Info",
    ),
  ];
}

List<Widget> _buildScreens() {
  return [HomeScreen(), LoginScreen(), SignUpScreen(), InfoScreen()];
}
