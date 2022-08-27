import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/model/mal_reports.dart';
import 'package:my_capstone_project/view/widgets/back_button.dart';
import 'package:my_capstone_project/view/widgets/inputdecoration.dart';
import 'package:my_capstone_project/view_model/repository/mal_reports_repository.dart';
import 'package:my_capstone_project/view_model/reports_transition_notifier.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

class MonitoringActivityLog extends ConsumerStatefulWidget {
  String? reportId;
  bool toUpdate;
  dynamic report;

  MonitoringActivityLog(
      {super.key, this.reportId, this.toUpdate = false, this.report});

  @override
  _MonitoringActivityLogState createState() => _MonitoringActivityLogState();
}

class _MonitoringActivityLogState extends ConsumerState<MonitoringActivityLog> {
  bool enableTextFields = true;
  late final TextEditingController _date,
      _bhs,
      _rhu,
      _activities,
      _findings,
      _conforme;

  @override
  void initState() {
    _date = TextEditingController();
    _bhs = TextEditingController();
    _rhu = TextEditingController();
    _activities = TextEditingController();
    _findings = TextEditingController();
    _conforme = TextEditingController();

    if (widget.toUpdate) {
      _date.text = widget.report['date'];
      _bhs.text = widget.report['barangayHealthStation'];
      _rhu.text = widget.report['ruralHEalthUnit'];
      _activities.text = widget.report['activities'];
      _findings.text = widget.report['findings'];
      _conforme.text = widget.report['conforme'];

      enableTextFields = false;
    }

    super.initState();
  }

  @override
  void dispose() {
    _date.dispose();
    _bhs.dispose();
    _rhu.dispose();
    _activities.dispose();
    _findings.dispose();
    _conforme.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _auth = ref.watch(authenticationServicesProvider);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg_home.png'), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  MyBackButton(),
                  Text(
                    "Monitoring Activity Log",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                    child: Text(
                      "Date",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                      controller: _date,
                      enabled: enableTextFields,
                      decoration: myTextFieldDecoration(
                        icon: Icon(
                          Icons.event_note,
                          color: Color.fromARGB(130, 75, 190, 131),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);

                          setState(() {
                            _date.text = formattedDate;
                          });
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 10),
                    child: Text("Area Monitored",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: green,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                        controller: _bhs,
                        enabled: enableTextFields,
                        decoration: myTextFieldDecoration(
                            labelText: "Barangay Health Station")),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                        controller: _rhu,
                        enabled: enableTextFields,
                        decoration: myTextFieldDecoration(
                            labelText: "Municipal/Regional Health Unit")),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 0, 0, 0),
                    child: Text("Activities",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: green,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    //height: 500,
                    child: TextFormField(
                      controller: _activities,
                      enabled: enableTextFields,
                      keyboardType: TextInputType.multiline,
                      minLines: 3,
                      maxLines: 5,
                      decoration: InputDecoration(
                        focusColor: green,
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: borderColor, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: borderColor, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: borderColor, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelStyle: TextStyle(color: green),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                    child: Text("Findings/Remarks",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: green,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                      controller: _findings,
                      enabled: enableTextFields,
                      keyboardType: TextInputType.multiline,
                      minLines: 3,
                      maxLines: 5,
                      decoration: InputDecoration(
                        focusColor: green,
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: borderColor, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: borderColor, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: borderColor, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelStyle: TextStyle(color: green),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                    child: Text("Conforme",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: green,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    //height: 500,
                    child: TextFormField(
                        controller: _conforme,
                        enabled: enableTextFields,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: myTextFieldDecoration()),
                  ),
                  Visibility(
                    visible: !enableTextFields,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 10,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 14),
                            primary: Colors.white,
                            fixedSize: Size(0, 50),
                            side: BorderSide(color: green)),
                        onPressed: () {
                          enableTextFields = true;
                          setState(() {});
                        },
                        child: Text('EDIT THIS REPORT',
                            style: TextStyle(
                                color: green, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 14),
                        primary: green,
                        fixedSize: Size(0, 50),
                      ),
                      onPressed: () {
                        final malReports = MalReports(
                            userId: _auth.getCurrentUserId(),
                            date: _date.text,
                            barangayHealthStation: _bhs.text,
                            ruralHEalthUnit: _rhu.text,
                            activities: _activities.text,
                            findings: _findings.text,
                            conforme: _conforme.text);
                        if (widget.toUpdate) {
                          ref
                              .read(malReportsRepositoryProvider)
                              .editMalReport(malReports, widget.reportId!);
                        } else {
                          ref
                              .read(malReportsRepositoryProvider)
                              .addMalReport(malReports);
                        }
                      },
                      child: Text(widget.toUpdate ? 'SAVE' : 'DONE',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
