// import 'package:flutter/material.dart';
// import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
// import 'package:graduationproject/presantion/screens/conttact_us/conttact__us.dart';
// import 'package:graduationproject/presantion/screens/home_screen/home_screen.dart';
// import 'package:graduationproject/presantion/screens/info_screen/info_screen.dart';
// import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';
// import 'package:graduationproject/presantion/screens/user/user_screen.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// class ButtomNavigation extends StatelessWidget {
//   ButtomNavigation({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var _controller = PersistentTabController(initialIndex: 0);

//     return PersistentTabView(
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       confineInSafeArea: true,
//       backgroundColor: Colors.white, // Default is Colors.white.
//       handleAndroidBackButtonPress: true, // Default is true.
//       resizeToAvoidBottomInset:
//           true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
//       stateManagement: true, // Default is true.
//       hideNavigationBarWhenKeyboardShows:
//           true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
//       decoration: NavBarDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         colorBehindNavBar: Colors.white,
//       ),
//       popAllScreensOnTapOfSelectedTab: true,
//       popActionScreens: PopActionScreensType.all,
//       itemAnimationProperties: ItemAnimationProperties(
//         // Navigation Bar's items animation properties.
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: ScreenTransitionAnimation(
//         // Screen transition animation on change of selected tab.
//         animateTabTransition: true,
//         curve: Curves.ease,
//         duration: Duration(milliseconds: 200),
//       ),
//       navBarStyle:
//           NavBarStyle.style1, // Choose the nav bar style with this property.
//     );
//   }
// }

// List<Widget> _buildScreens() {
//   return [HomeScreen(), InfoScreen(), InfoScreen(), InfoScreen()];
// }

// List<PersistentBottomNavBarItem> _navBarsItems() {
//   return [
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.home),
//       title: ("Home"),
//       activeColorPrimary: Colors.blue,
//     ),
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.phone),
//       title: ("ConttactUs"),
//       activeColorPrimary: Colors.blue,
//     ),
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.person),
//       title: ("User"),
//       activeColorPrimary: Colors.blue,
//     ),
//     PersistentBottomNavBarItem(
//       icon: Icon(Icons.settings),
//       title: ("Info"),
//       activeColorPrimary: Colors.blue,
//     ),
//   ];
// }
