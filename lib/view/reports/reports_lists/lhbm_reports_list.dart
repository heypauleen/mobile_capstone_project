import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/constants/enums/menu_action.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view/reports/reports_forms/coaching_and_monitoring.dart';
import 'package:my_capstone_project/view/reports/reports_forms/local_health_board_monitoring.dart';
import 'package:my_capstone_project/view/widgets/back_button.dart';
import 'package:my_capstone_project/view/widgets/confirmation_modal.dart';
import 'package:my_capstone_project/view_model/repository/lhbm_reports_repository.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

class LHBMReportsList extends ConsumerStatefulWidget {
  const LHBMReportsList({super.key});

  @override
  LHBMReportsListState createState() => LHBMReportsListState();
}

class LHBMReportsListState extends ConsumerState<LHBMReportsList> {
  @override
  Widget build(BuildContext context) {
    final _auth = ref.watch(authenticationServicesProvider);
    final lhbmReports = ref.watch(lhbmReportsRepositoryProvider);

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
              SizedBox(
                height: 10,
              ),
              Text(
                "Local Health Board Monitoring Report",
                style: textStyleHeadings,
              ),
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
                      ),
                    ),
                  ),
                ),
              ),
              StreamBuilder(
                stream: lhbmReports.streamAllLHBMReports(
                    userId: _auth.getCurrentUserId()),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.error != null) {
                    return Center(
                        child: Text(
                            'An error has occured while fetching the data'));
                  } else {
                    List<QueryDocumentSnapshot> _reportsList =
                        snapshot.data.docs;
                    return _reportsList.length != 0
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: _reportsList.length,
                            itemBuilder: (context, index) {
                              final _currentReport = _reportsList[index];
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
                                    subtitle: Text(
                                      _currentReport['agenda'],
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    trailing: PopupMenuButton(
                                      icon: Icon(Icons.more_vert),
                                      itemBuilder: (context) {
                                        return const [
                                          PopupMenuItem<MenuAction>(
                                              value: MenuAction.view,
                                              child: Text('View')),
                                          PopupMenuItem<MenuAction>(
                                              value: MenuAction.delete,
                                              child: Text('Delete')),
                                        ];
                                      },
                                      onSelected: (value) async {
                                        switch (value) {
                                          case MenuAction.delete:
                                            showDialog<bool>(
                                                context: context,
                                                builder: (context) {
                                                  return ConfirmationPopUp()
                                                      .deleteReport(
                                                          context,
                                                          ref
                                                              .read(
                                                                  lhbmReportsRepositoryProvider)
                                                              .deleteLHBMReport(
                                                                  _reportsList[
                                                                          index]
                                                                      .id));
                                                });
                                            break;
                                          case MenuAction.view:
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LocalHealthBoardMonitoring(
                                                  reportId:
                                                      _reportsList[index].id,
                                                  toUpdate: true,
                                                  report: _reportsList[index]
                                                      .data(),
                                                ),
                                              ),
                                            );
                                            break;
                                          default:
                                            break;
                                        }
                                      },
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              LocalHealthBoardMonitoring(
                                            reportId: _reportsList[index].id,
                                            toUpdate: true,
                                            report: _reportsList[index].data(),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
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
                            builder: (context) => LocalHealthBoardMonitoring(
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