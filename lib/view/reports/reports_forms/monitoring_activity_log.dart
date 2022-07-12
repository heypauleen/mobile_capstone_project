import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/constants/gradient.dart';
import 'package:my_capstone_project/view/appbar.dart';
import 'package:my_capstone_project/view_model/controllers/mal_reports_controller.dart';
import 'package:my_capstone_project/view_model/reports_transition_notifier.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

class MonitoringActivityLog extends ConsumerStatefulWidget {
  const MonitoringActivityLog({Key? key}) : super(key: key);

  @override
  _MonitoringActivityLogState createState() => _MonitoringActivityLogState();
}

class _MonitoringActivityLogState extends ConsumerState<MonitoringActivityLog> {
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
    final reportTransitionNotifier =
        ref.watch(reportsTransitionProvider.notifier);
    final _auth = ref.watch(authenticationServicesProvider);
    return Scaffold(
      //appBar: appBar(context, ref, 'Monitoring Activity Log'),
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg_home.png'),
                  fit: BoxFit.fill)),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        '< Back',
                        style:
                            TextStyle(color: Color.fromARGB(255, 57, 166, 133)),
                      ),
                    ),
                    onTap: () {
                      reportTransitionNotifier.pushHomePage();
                      
                    },
                  ),
                  Text(
                    "Monitoring Activity Log",
                    style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                    child: Text("Date",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                      controller: _date,
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)),
                          contentPadding: EdgeInsets.all(17)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 10),
                    child: Text("Area Monitored",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                      controller: _bhs,
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)),
                          labelText: "Barangay Health Station",
                          contentPadding: EdgeInsets.all(17)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                      controller: _rhu,
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)),
                          labelText: "Municipal/Regional Health Unit",
                          contentPadding: EdgeInsets.all(17)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 0, 0, 0),
                    child: Text("Activities",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    //height: 500,
                    child: TextFormField(
                      controller: _activities,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        focusColor: Color(0xff4BBE83),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelStyle: TextStyle(color: Color(0xff4BBE83)),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 20,
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
                          color: Color(0xff4BBE83),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    //height: 500,
                    child: TextFormField(
                      controller: _findings,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        focusColor: Color(0xff4BBE83),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelStyle: TextStyle(color: Color(0xff4BBE83)),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 20,
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
                          color: Color(0xff4BBE83),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    //height: 500,
                    child: TextFormField(
                      controller: _conforme,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)),
                          contentPadding: EdgeInsets.all(17)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 14),
                        primary: Color(0xff4BBE83),
                        fixedSize: Size(0, 50),
                      ),
                      onPressed: () {
                        ref.read(malReportsControllerProvider).addMalReports(
                            userId: _auth.getCurrentUser()!.uid.toString(),
                            date: _date.text,
                            barangayHealthStation: _bhs.text,
                            ruralHEalthUnit: _rhu.text,
                            activities: _activities.text,
                            findings: _findings.text,
                            conforme: _conforme.text);
                      },
                      child: const Text('DONE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
