import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/model/cm_reports.dart';
import 'package:my_capstone_project/view/widgets/back_button.dart';
import 'package:my_capstone_project/view/widgets/confirmation_modal.dart';
import 'package:my_capstone_project/view/widgets/gradient_text.dart';
import 'package:my_capstone_project/view/widgets/multiline_textformfield_decoration.dart';
import 'package:my_capstone_project/view/widgets/textfield_title.dart';
import 'package:my_capstone_project/view/widgets/textformfield_decoration.dart';
import 'package:my_capstone_project/view_model/repository/cm_reports_repository.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

class CoachingAndMonitoring extends ConsumerStatefulWidget {
  String? reportId;
  bool toUpdate;
  dynamic report;
  CoachingAndMonitoring(
      {super.key, this.reportId, this.toUpdate = false, this.report});

  @override
  _MonitoringActivityLogState createState() => _MonitoringActivityLogState();
}

class _MonitoringActivityLogState extends ConsumerState<CoachingAndMonitoring> {
  bool enableTextFields = true;
  bool showSaveButton = true;
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

    if (widget.toUpdate) {
      _date.text = widget.report['date'];
      _area.text = widget.report['areaMonitored'];
      _typeOfCoaching.text = widget.report['typeOfCoaching'];
      _coacheeName.text = widget.report['nameOfCoachee'];
      _agenda.text = widget.report['agenda'];
      _agreement.text = widget.report['agreement'];
      _targetDate.text = widget.report['dateOfImplementation'];
      _conforme.text = widget.report['conforme'];
      _status.text = widget.report['status'];

      enableTextFields = false;
      showSaveButton = false;
    }

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
                MyGradientHeaderText(
                  text: "Coaching and Monitoring Report",
                  fontSize: 22,
                ),
                MyTextFieldTitle(
                  text: 'Date',
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
                MyTextFieldTitle(text: 'Area Monitored'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: TextFormField(
                    enabled: enableTextFields,
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
                    enabled: enableTextFields,
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
                    enabled: enableTextFields,
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
                    enabled: enableTextFields,
                    controller: _agenda,
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
                    enabled: enableTextFields,
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
                    enabled: enableTextFields,
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
                    enabled: enableTextFields,
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
                    enabled: enableTextFields,
                    controller: _status,
                    decoration: myTextFieldDecoration(),
                  ),
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
                        showSaveButton = true;
                        setState(() {});
                      },
                      child: Text('CLICK HERE TO EDIT THIS REPORT',
                          style: TextStyle(
                              color: green, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Visibility(
                  visible: showSaveButton,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 10),
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
                          widget.toUpdate
                              ? ref
                                  .read(cmReportsRepositoryProvider)
                                  .editCMReport(cmReports, widget.reportId!)
                              : ref
                                  .read(cmReportsRepositoryProvider)
                                  .addCMReports(cmReports);
                          final successSnackbar = SnackBar(
                            backgroundColor: green,
                            content: Text(
                              widget.toUpdate
                                  ? 'Edited Successfully'
                                  : 'Added Successfully!',
                            ),
                            duration: Duration(seconds: 1),
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(successSnackbar)
                              .closed
                              .then((value) => widget.toUpdate
                                  ? setState(() {
                                      enableTextFields = false;
                                      showSaveButton = false;
                                    })
                                  : Navigator.pop(context));
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
                        'SAVE',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
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
                        primary: red,
                        fixedSize: Size(0, 50),
                      ),
                      onPressed: () {
                        showDialog<bool>(
                            context: context,
                            builder: (context) {
                              return ConfirmationPopUp().deleteReport(
                                  context,
                                  ref
                                      .read(cmReportsRepositoryProvider)
                                      .deleteMalReport(widget.reportId!));
                            }).then(
                          (value) => Navigator.pop(context),
                        );
                      },
                      child: Text(
                        'DELETE THIS REPORT',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
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
