import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/view/appbar.dart';
import 'package:my_capstone_project/view/homepage.dart';
import 'package:my_capstone_project/view/reports.dart';
import 'package:my_capstone_project/view/search.dart';
import 'package:my_capstone_project/view/user_settings.dart';
import 'package:my_capstone_project/view_model/buttonnavibar_notifier.dart';

enum MenuAction { logout }

class Navigation extends ConsumerWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _buttonNaviBarState = ref.watch(buttonNaviBarProvider);
    final _buttonNaviBarStateNotifier = ref.watch(buttonNaviBarProvider.notifier);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/bg_home.png'),
                fit: BoxFit.cover
            )
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: appBar(context, ref),
        body: () {
          switch(_buttonNaviBarState.index) {
            case 0:
              return const Home(); 
            case 1:
              return const Search();
            case 2: 
              return const Reports();
            case 3:
              return const User_Settings(); 
          }
        } (),
        bottomNavigationBar: BottomNavigationBar(
          onTap:(index) => _buttonNaviBarStateNotifier.currentButton(index),
          currentIndex: _buttonNaviBarState.index,
          type: BottomNavigationBarType.fixed,
          items: const[
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home),),
            BottomNavigationBarItem(
                label: "Updates", icon: Icon(Icons.calendar_month),),
            BottomNavigationBarItem(
                label: "Reports", icon: Icon(Icons.archive),),
            BottomNavigationBarItem(
                label: "User", icon: Icon(Icons.account_circle),),
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