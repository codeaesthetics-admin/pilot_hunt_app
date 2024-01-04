import 'package:flutter/material.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/screens/chat_screen/chat_screen.dart';
import 'package:linx_uav/screens/home_page/home_page_pilot.dart';
import 'package:linx_uav/screens/my_project/project_screen_pilot.dart';
import 'package:linx_uav/screens/profile_screen/profile_screen_user.dart';

class UserCusBottomBar extends StatefulWidget {
  const UserCusBottomBar({Key? key}) : super(key: key);

  @override
  UserCusBottomBarState createState() => UserCusBottomBarState();
}

class UserCusBottomBarState extends State<UserCusBottomBar> {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = [
    // PilotHomePage(),
    // PilotProjectScreen(),
    ChatScreen(),
    UserProfileScreen(),
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
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.private_connectivity), label: 'Projects'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profile'),
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
