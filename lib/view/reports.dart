import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/view/reports/reports_forms/coaching_and_monitoring.dart';
import 'package:my_capstone_project/view/reports/reports_forms/local_health_board_monitoring.dart';
import 'package:my_capstone_project/view/reports/reports_forms/monitoring_activity_log.dart';
import 'package:my_capstone_project/view/reports/reports_list.dart';
import 'package:my_capstone_project/view_model/reports_transition_notifier.dart';

import '../constants/style.dart' as gradient;

class Reports extends ConsumerWidget {
  const Reports({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportsTransitionState = ref.watch(reportsTransitionProvider);

    return Navigator(
      pages: [
        const MaterialPage(
          child: Menu(),
        ),
        if (reportsTransitionState.reportsTransitionId == 0)
          const MaterialPage(
            child: Menu(),
          ),
        if (reportsTransitionState.reportsTransitionId == 1)
          const MaterialPage(
            child: MonitoringActivityLog(),
          ),
        if (reportsTransitionState.reportsTransitionId == 2)
          const MaterialPage(
            child: CoachingAndMonitoring(),
          ),
        if (reportsTransitionState.reportsTransitionId == 3)
          const MaterialPage(
            child: LocalHealthBoardMonitoring(),
          ),
        if (reportsTransitionState.reportsTransitionId == 4)
          const MaterialPage(
            child: ReportsList(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        return true;
      },
    );
  }
}

class Menu extends ConsumerWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportsTransitionNotifier =
        ref.watch(reportsTransitionProvider.notifier);
    return Container(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //add 3 buttons here for the local health board monitoring reports
          Padding(
            //Monitoring Activity Log button
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(75, 00),
                  primary: Color(0xffFFFFFF),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Product Sans',
                      color: Colors.grey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/resources_logo.png'),
                        height: 50,
                        width: 50,
                        fit: BoxFit.fitWidth,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Monitoring Activity Log",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Product Sans',
                                //letterSpacing: .0,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..shader = gradient.linearGradient),
                          ),
                        ),
                      ),
                    ]),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ReportsList()))),
          ),
          Padding(
              // Coaching and monitoring report
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () =>
                      reportsTransitionNotifier.pushCMRReportsPage(),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(75, 00),
                      primary: Color(0xffFFFFFF),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      textStyle:
                          TextStyle(fontSize: 15, fontFamily: 'Product-Sans'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage(
                              'assets/images/coaching_monitoring_logo.png'),
                          height: 50,
                          width: 50,
                          fit: BoxFit.fitWidth,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Coaching and Monitoring \nReport",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Product Sans',
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..shader = gradient.linearGradient),
                            ),
                          ),
                        )
                      ]))),
          Padding(
              // Coaching and monitoring report
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () =>
                      reportsTransitionNotifier.pushLHBReportsPage(),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(75, 00),
                      primary: Color(0xffFFFFFF),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      textStyle:
                          TextStyle(fontSize: 15, fontFamily: 'Product-Sans'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image(
                          image:
                              AssetImage('assets/images/local_health_logo.png'),
                          height: 50,
                          width: 50,
                          fit: BoxFit.fitWidth,
                        ),
                        Expanded(
                          child: Column(children: <Widget>[
                            Text(
                              "Local Health Board \n Monitoring Report",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Product Sans',
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..shader = gradient.linearGradient),
                            ),
                          ]),
                        )
                      ])))
        ],
      )),
    );
  }
}
