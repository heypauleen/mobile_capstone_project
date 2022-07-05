import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_capstone_project/constants/routes.dart';
import 'package:my_capstone_project/services/auth/auth_service.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_bloc.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_event.dart';
import 'package:my_capstone_project/views/home.dart';
import 'package:my_capstone_project/views/reports.dart';
import 'package:my_capstone_project/views/search.dart';
import 'package:my_capstone_project/views/user_settings.dart';
import '../utilities/dialogs/logout_dialog.dart';

enum MenuAction { logout }

class App_Bar extends StatelessWidget {
  App_Bar({Key? key}) : super(key: key);
  var screens = [Home(), Search(), Reports(), User_Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: TextButton(
              onPressed: () {},
              child: Icon(
                Icons.notifications_none_outlined,
                color: Color(0xff727272),
                size: 30,
              ),
            ),
            actions: [
              PopupMenuButton<MenuAction>(
                  icon: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_960_720.png"),
                  ),
                  onSelected: (value) async {
                    switch (value) {
                      case MenuAction.logout:
                        final shouldLogout = await showLogOutDialog(context);
                        if (shouldLogout) {
                          context.read<AuthBloc>().add(
                                const AuthEventLogout(),
                              );
                        }
                    }
                  },
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem<MenuAction>(
                          value: MenuAction.logout, child: Text('Logout')),
                    ];
                  })
            ]),
        body: Container(
          child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              activeColor: Color(0xff4BBE83),
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    label: "Home", icon: Icon(CupertinoIcons.home)),
                BottomNavigationBarItem(
                    label: "Updates", icon: Icon(CupertinoIcons.calendar)),
                BottomNavigationBarItem(
                    label: "Reports", icon: Icon(CupertinoIcons.archivebox)),
                BottomNavigationBarItem(
                    label: "User", icon: Icon(CupertinoIcons.person)),
              ],
            ),
            tabBuilder: (BuildContext context, int index) {
              return screens[index];
            },
          ),
        ));
  }
}
