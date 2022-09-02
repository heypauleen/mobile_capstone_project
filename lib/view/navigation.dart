import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view/widgets/app_bar.dart';
import 'package:my_capstone_project/view/homepage.dart';
import 'package:my_capstone_project/view/reports.dart';
import 'package:my_capstone_project/view/search.dart';
import 'package:my_capstone_project/view/user_settings.dart';
import 'package:my_capstone_project/view_model/bottomnavibar_notifier.dart';

enum MenuAction { logout }

class Navigation extends ConsumerWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _buttonNaviBarState = ref.watch(buttonNaviBarProvider);
    final _buttonNaviBarStateNotifier =
        ref.watch(buttonNaviBarProvider.notifier);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/bg_home.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: appBar(context, ref),
        body: () {
          switch (_buttonNaviBarState.index) {
            case 0:
              return const Home();
            case 1:
              return const Search();
            case 2:
              return const Reports();
            case 3:
              return const User_Settings();
          }
        }(),
        bottomNavigationBar: DotNavigationBar(
            onTap: (index) => _buttonNaviBarStateNotifier.currentButton(index),
            enableFloatingNavBar: true,
            enablePaddingAnimation: true,
            currentIndex: _buttonNaviBarState.index,
            marginR: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            unselectedItemColor: lightGray,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: gray.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            //type: BottomNavigationBarType.fixed,
            items: [
              DotNavigationBarItem(
                icon: Icon(Icons.home),
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.calendar_month),
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.feed),
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.account_circle),
              ),
            ]),
      ),
    );
  }
}
// Scaffold(
//       appBar: appBar(context, ref),
//         body: Container(
//           child: CupertinoTabScaffold(
//             tabBar: CupertinoTabBar(
//               activeColor: Color(0xff4BBE83),
//               backgroundColor: Colors.white,
//               items: [
//                 BottomNavigationBarItem(
//                     label: "Home", icon: Icon(CupertinoIcons.home)),
//                 BottomNavigationBarItem(
//                     label: "Updates", icon: Icon(CupertinoIcons.calendar)),
//                 BottomNavigationBarItem(
//                     label: "Reports", icon: Icon(CupertinoIcons.archivebox)),
//                 BottomNavigationBarItem(
//                     label: "User", icon: Icon(CupertinoIcons.person)),
//               ],
//             ),
//             tabBuilder: (BuildContext context, int index) {
//               return screens[index];
//             },
//           ),
//         ));