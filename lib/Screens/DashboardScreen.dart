import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forgetnote/Screens/GiftScreen.dart';
import 'package:forgetnote/Utils/GColor.dart';
import 'package:forgetnote/Utils/GImages.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'FriendsScreen.dart';
import 'HomeScreen.dart';
import 'ProfileScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {

    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        FriendsScreen(),
        FriendsScreen(),
        GiftMainScreen(),
        ProfileScreen(),

      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(

          icon:Icon(Icons.home_outlined, color:sh_colorSecodary,),
          inactiveIcon: Icon(Icons.home_outlined, color: Colors.orange,),

          // Container(
          //   color: Colors.red,
          //   height: 200,
          //   width: 50,
          //   // child:  Image.asset('assets/Layer 2@3x.png',
          //   //  fit: BoxFit.fill,
          //   // ),
          // ),
          // iconSize: 150,//Icon(Icons.home),
          title: ("."),
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
          activeColorPrimary: Color(0xFFEA2C4C),
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon:Icon(Icons.group_outlined, color:sh_colorSecodary,),
          inactiveIcon: Icon(Icons.group_outlined, color: Colors.orange,),
          title: ("."),
          textStyle: TextStyle(
            color: sh_colorSecodary,
            fontWeight: FontWeight.w900,
            fontSize: 20,

          ),
          activeColorPrimary: Color(0xFFEA2C4C),
          inactiveColorPrimary: Colors.black ,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.add,
            color: Colors.orange,
          ),
          title: ("."),
          textStyle: TextStyle(
            color: Colors.black,

          ),
          activeColorPrimary: Color(0xFFEA2C4C),
          activeColorSecondary: Colors.black,
          // inactiveColorPrimary: Colors.white ,
        ),
        PersistentBottomNavBarItem(
          icon:Icon(Icons.check_box_outline_blank_sharp, color:sh_colorSecodary,),
          inactiveIcon: Icon(Icons.check_box_outline_blank_sharp, color: Colors.orange,),
          title: ("."),
          textStyle: TextStyle(
            color: Color(0xFFEA2C4C),
            fontWeight: FontWeight.w900,
            fontSize: 20,

          ),
          activeColorPrimary: Color(0xFFEA2C4C),
          inactiveColorPrimary: Colors.black,
          //activeColorSecondary: sh_colorSecodary,

        ),
        PersistentBottomNavBarItem(
          icon:Icon(Icons.person_outline, color:sh_colorSecodary,),
          inactiveIcon: Icon(Icons.person_outline, color: Colors.orange,),          title: ("."),
          textStyle: TextStyle(
            color: Color(0xFFEA2C4C),
            fontWeight: FontWeight.w900,
            fontSize: 20,

          ),
          activeColorPrimary: sh_colorSecodary,
          inactiveColorPrimary: Colors.black,
        ),

      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);


    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: Container(
          child: PersistentTabView(
            context,
            margin: EdgeInsets.symmetric(horizontal: 20),
            navBarHeight:70,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: Colors.white, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
            hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(180.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),

            navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
          ),
        ),
      ),
    );
  }
}
