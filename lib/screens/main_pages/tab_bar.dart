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
      backgroundColor: Colors.white,
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
                  label: "Search",
                  icon: Icon(CupertinoIcons.search)
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
