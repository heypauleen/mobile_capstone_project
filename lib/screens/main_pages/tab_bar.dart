import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_capstone_project/screens/main_pages/home.dart';
import 'package:my_capstone_project/screens/main_pages/reports.dart';
import 'package:my_capstone_project/screens/main_pages/search.dart';
import 'package:my_capstone_project/screens/main_pages/user_settings.dart';

class Tab_Bar extends StatelessWidget {
  Tab_Bar({Key? key}) : super(key: key);
  var screens = [Home(), Search(), Reports(),User_Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xff727272),
                  size: 40,
                ),
                SizedBox(width: 10.0),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_960_720.png"),
                )
              ],
            )
        ),
      body: Container(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Color(0xff4BBE83),
          backgroundColor: Colors.white,
            items:[
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(CupertinoIcons.home)
              ),
              BottomNavigationBarItem(
                  label: "Updates",
                  icon: Icon(CupertinoIcons.calendar)
              ),
              BottomNavigationBarItem(
                  label: "Reports",
                  icon: Icon(CupertinoIcons.archivebox)
              ),
              BottomNavigationBarItem(
                  label: "User",
                  icon: Icon(CupertinoIcons.person)
              ),
            ],
          ),
        tabBuilder: (BuildContext context, int index) {
          return screens[index];
        },
        ),
        )
      );
  }
}
