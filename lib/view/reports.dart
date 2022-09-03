import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/lhbm_reports.dart';
import 'package:my_capstone_project/view/reports/reports_forms/coaching_and_monitoring.dart';
import 'package:my_capstone_project/view/reports/reports_forms/local_health_board_monitoring.dart';
import 'package:my_capstone_project/view/reports/reports_forms/monitoring_activity_log.dart';
import 'package:my_capstone_project/view/reports/reports_lists/cm_reports_list.dart';
import 'package:my_capstone_project/view/reports/reports_lists/lhbm_reports_list.dart';
import 'package:my_capstone_project/view/reports/reports_lists/mal_reports_list.dart';
import 'package:my_capstone_project/view/widgets/report_menu_button.dart';
import 'package:my_capstone_project/view_model/reports_transition_notifier.dart';

class Reports extends ConsumerWidget {
  const Reports({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportsTransitionState = ref.watch(reportsTransitionProvider);
    final reportsTransitionNotifier =
        ref.watch(reportsTransitionProvider.notifier);

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
          MaterialPage(
            child: MonitoringActivityLog(),
          ),
        if (reportsTransitionState.reportsTransitionId == 2)
          MaterialPage(
            child: CoachingAndMonitoring(),
          ),
        if (reportsTransitionState.reportsTransitionId == 3)
          MaterialPage(
            child: LocalHealthBoardMonitoring(),
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
          ReportMenuButton(
              text: "Monitoring Activity Log",
              imageAsset: "assets/images/resources_logo.png",
              pageRoute: MalReportsList()),
          ReportMenuButton(
            text: "Coaching and Monitoring Report",
            imageAsset: "assets/images/coaching_monitoring_logo.png",
            pageRoute: CmReportsList(),
          ),
          ReportMenuButton(
              text: "Local Health Board \n Monitoring Report",
              imageAsset: "assets/images/local_health_logo.png",
              pageRoute: LHBMReportsList()),

          ///onPressed: () =>  reportsTransitionNotifier.pushLHBReportsPage(),
        ],
      )),
    );
  }
}
