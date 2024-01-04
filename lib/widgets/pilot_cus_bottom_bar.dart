import 'package:flutter/material.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/screens/chat_screen/chat_screen.dart';
import 'package:linx_uav/screens/home_page/home_page_client.dart';
import 'package:linx_uav/screens/home_page/home_page_pilot.dart';
import 'package:linx_uav/screens/my_project/project_screen_pilot.dart';
import 'package:linx_uav/screens/profile_screen/profile_screen_pilot.dart';

import '../constants/icons.dart';

class PilotCusBottomBar extends StatefulWidget {
  const PilotCusBottomBar({Key? key}) : super(key: key);

  @override
  PilotCusBottomBarState createState() => PilotCusBottomBarState();
}

class PilotCusBottomBarState extends State<PilotCusBottomBar> {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = [
    ClientHomePage(),
    PilotProjectScreen(),
    ChatScreen(),
    PilotProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items:  [
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.drone), label: ''),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.chat_bubble_outline,size: 30,), label: ''),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.user_icon), label: ''),
          ],
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          // backgroundColor: Colors.black,

          fixedColor: kColorPrimary,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
