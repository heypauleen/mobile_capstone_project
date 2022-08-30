import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/model/cm_reports.dart';
import 'package:my_capstone_project/view/widgets/back_button.dart';
import 'package:my_capstone_project/view/widgets/multiline_textformfield_decoration.dart';
import 'package:my_capstone_project/view/widgets/textfield_title.dart';
import 'package:my_capstone_project/view/widgets/textformfield_decoration.dart';
import 'package:my_capstone_project/view_model/repository/cm_reports_repository.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

class CoachingAndMonitoring extends ConsumerStatefulWidget {
  const CoachingAndMonitoring({Key? key}) : super(key: key);

  @override
  _MonitoringActivityLogState createState() => _MonitoringActivityLogState();
}

class _MonitoringActivityLogState extends ConsumerState<CoachingAndMonitoring> {
  late final TextEditingController _date,
      _area,
      _typeOfCoaching,
      _coacheeName,
      _agenda,
      _agreement,
      _targetDate,
      _conforme,
      _status;

  @override
  void initState() {
    _date = TextEditingController();
    _area = TextEditingController();
    _typeOfCoaching = TextEditingController();
    _coacheeName = TextEditingController();
    _agenda = TextEditingController();
    _agreement = TextEditingController();
    _targetDate = TextEditingController();
    _conforme = TextEditingController();
    _status = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _date.dispose();
    _area.dispose();
    _typeOfCoaching.dispose();
    _coacheeName.dispose();
    _agenda.dispose();
    _agreement.dispose();
    _targetDate.dispose();
    _conforme.dispose();
    _status.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _auth = ref.watch(authenticationServicesProvider);
    return Scaffold(
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
                MyBackButton(),
                Text(
                  "Coaching and Monitoring Report",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient),
                  textAlign: TextAlign.center,
                ),
                MyTextFieldTitle(
                  text: 'Date',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _date,
                    //enabled: enableTextFields,
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
                MyTextFieldTitle(text: 'Area Monitored'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _area,
                    decoration: myTextFieldDecoration(),
                  ),
                ),
                MyTextFieldTitle(
                  text: 'Type of Coaching',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _typeOfCoaching,
                    decoration: myTextFieldDecoration(),
                  ),
                ),
                MyTextFieldTitle(
                  text: 'Name of Coachee/s',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _coacheeName,
                    decoration: myTextFieldDecoration(),
                  ),
                ),
                MyTextFieldTitle(
                  text: 'Agenda/Issues Discussed',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    minLines: 3,
                    maxLines: 5, // allow user to enter 5 line in textfield
                    keyboardType: TextInputType
                        .multiline, // user keyboard will have a button to move cursor to next line
                    decoration: myMultilineTextFieldDecoration(),
                  ),
                ),
                MyTextFieldTitle(text: 'Agreement/Next Step'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _agreement,
                    minLines: 3,
                    maxLines: 5, // allow user to enter 5 line in textfield
                    keyboardType: TextInputType.multiline,
                    decoration: myMultilineTextFieldDecoration(),
                  ),
                ),
                MyTextFieldTitle(
                  text: 'Target Date of Implementation',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _targetDate,
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
                          _targetDate.text = formattedDate;
                        });
                      }
                    },
                  ),
                ),
                MyTextFieldTitle(text: 'Conforme'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _conforme,
                    decoration: myTextFieldDecoration(),
                  ),
                ),
                MyTextFieldTitle(
                  text: 'Status',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    controller: _status,
                    decoration: myTextFieldDecoration(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 14),
                      primary: Color(0xff4BBE83),
                      fixedSize: Size(0, 50),
                    ),
                    onPressed: () {
                      final cmReports = CmReports(
                          userId: _auth.getCurrentUserId(),
                          date: _date.text,
                          areaMonitored: _area.text,
                          typeOfCoaching: _typeOfCoaching.text,
                          nameOfCoachee: _coacheeName.text,
                          agenda: _agenda.text,
                          agreement: _agreement.text,
                          dateOfImplementation: _targetDate.text,
                          conforme: _conforme.text,
                          status: _status.text);
                      try {
                        ref
                            .read(cmReportsRepositoryProvider)
                            .addCMReports(cmReports);
                        final successSnackbar = SnackBar(
                          backgroundColor: green,
                          content: Text(
                            'Added Successfully!',
                          ),
                          duration: Duration(seconds: 1),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(successSnackbar)
                            .closed
                            .then((value) => Navigator.pop(context));
                      } catch (e) {
                        final failureSnackbar = SnackBar(
                          content: Text('Error : $e'),
                          backgroundColor: red,
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(failureSnackbar);
                      }
                    },
                    child: Text(
                      'DONE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
