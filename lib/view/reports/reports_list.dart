import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/model/mal_reports.dart';
import 'package:my_capstone_project/view/reports/reports_forms/monitoring_activity_log.dart';
import 'package:my_capstone_project/view/widgets/back_button.dart';
import 'package:my_capstone_project/view_model/reports_transition_notifier.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

import '../../view_model/repository/mal_reports_repository.dart';

class ReportsList extends ConsumerStatefulWidget {
  const ReportsList({Key? key}) : super(key: key);

  @override
  _ReportsCardviewState createState() => _ReportsCardviewState();
}

class _ReportsCardviewState extends ConsumerState<ReportsList> {
  @override
  Widget build(BuildContext context) {
    final _auth = ref.watch(authenticationServicesProvider);
    final malreports = ref.watch(malReportsRepositoryProvider);
    final reportsTransitionNotifier =
        ref.watch(reportsTransitionProvider.notifier);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg_home.png'), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Column(
            children: [
              MyBackButton(),
              Text('Monitoring Activity Log', style: textStyleHeadings),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 5.0,
                  shadowColor: lightGray,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: lightestGray,
                        ),
                        hintText: 'Search here',
                        hintStyle: TextStyle(fontSize: 15, color: lightGray),
                        fillColor: Colors.white,
                        suffixIcon: Icon(
                          Icons.filter_list,
                          color: lightGray,
                        )
                        //contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        ),
                  ),
                ),
              ),
              StreamBuilder(
                stream: malreports.streamAllMALReports(
                    userId: _auth.getCurrentUserId()),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  //List<QueryDocumentSnapshot> _malReportsList;
                  //MalReports(this._malReportsList);
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.error != null) {
                    return Center(
                        child: Text(
                            'An error has occured while fetching the data'));
                  } else {
                    List<QueryDocumentSnapshot> _malReportsList =
                        snapshot.data.docs;
                    return _malReportsList.length != 0
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: _malReportsList.length,
                            itemBuilder: (context, index) {
                              final _currentReport = _malReportsList[index];
                              final thisReport = _malReportsList[index].data();
                              //key:Key(_malReportsList[index].id);
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: ListTile(
                                      dense: false,
                                      title: Text(_currentReport['date']),
                                      subtitle:
                                          Text(_currentReport['activities']),
                                      trailing: Icon(Icons.more_vert),
                                      onTap: () {
                                        //print(_malReportsList[index].data());
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MonitoringActivityLog(
                                              reportId:
                                                  _malReportsList[index].id,
                                              toUpdate: true,
                                              report:
                                                  _malReportsList[index].data(),
                                            ),
                                          ),
                                        );
                                      },
                                    )),
                              );
                            },
                          )
                        : Center(
                            child: Text("No reports yet"),
                          );
                  }
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 25, 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MonitoringActivityLog(
                              toUpdate: false,
                            ),
                          ),
                        );
                      },
                      backgroundColor: green,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
