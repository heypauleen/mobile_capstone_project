import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/model/lhbm_reports.dart';
import 'package:my_capstone_project/view/widgets/back_button.dart';
import 'package:my_capstone_project/view/widgets/confirmation_modal.dart';
import 'package:my_capstone_project/view/widgets/gradient_text.dart';
import 'package:my_capstone_project/view/widgets/multiline_textformfield_decoration.dart';
import 'package:my_capstone_project/view/widgets/textfield_title.dart';
import 'package:my_capstone_project/view/widgets/textformfield_decoration.dart';
import 'package:my_capstone_project/view_model/repository/lhbm_reports_repository.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

class LocalHealthBoardMonitoring extends ConsumerStatefulWidget {
  String? reportId;
  bool toUpdate;
  dynamic report;
  LocalHealthBoardMonitoring(
      {super.key, this.reportId, this.toUpdate = false, this.report});

  @override
  LocalHealthBoardMonitoringState createState() =>
      LocalHealthBoardMonitoringState();
}

class LocalHealthBoardMonitoringState
    extends ConsumerState<LocalHealthBoardMonitoring> {
  bool enableTextFields = true;
  bool showSaveButton = true;
  late final TextEditingController _date,
      _area,
      _agenda,
      _agreement,
      _conforme,
      _status;

  @override
  void initState() {
    _date = TextEditingController();
    _area = TextEditingController();
    _agenda = TextEditingController();
    _agreement = TextEditingController();
    _conforme = TextEditingController();
    _status = TextEditingController();

    if (widget.toUpdate) {
      _date.text = widget.report['date'];
      _area.text = widget.report['area'];
      _agenda.text = widget.report['agenda'];
      _agreement.text = widget.report['agreement'];
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
    _agenda.dispose();
    _agreement.dispose();
    _conforme.dispose();
    _status.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _auth = ref.watch(authenticationServicesProvider);
    return Scaffold(
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
                  SizedBox(
                    height: 10,
                  ),
                  MyGradientHeaderText(
                    text: "Local Health Board Monitoring Report",
                    fontSize: 20,
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
                  MyTextFieldTitle(
                    text: 'Area',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                      controller: _area,
                      enabled: enableTextFields,
                      decoration: myTextFieldDecoration(),
                    ),
                  ),
                  MyTextFieldTitle(
                    text: 'Agenda',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                        controller: _agenda,
                        enabled: enableTextFields,
                        minLines: 3,
                        maxLines: 5,
                        decoration: myMultilineTextFieldDecoration()),
                  ),
                  MyTextFieldTitle(text: 'Agreement/Next Step'),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                        controller: _agreement,
                        enabled: enableTextFields,
                        minLines: 3,
                        maxLines: 5, // allow user to enter 5 line in textfield
                        keyboardType: TextInputType.multiline,
                        decoration: myMultilineTextFieldDecoration()),
                  ),
                  MyTextFieldTitle(
                    text: 'Conforme',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextFormField(
                      controller: _conforme,
                      enabled: enableTextFields,
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
                      enabled: enableTextFields,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 14),
                          primary: Color(0xff4BBE83),
                          fixedSize: Size(0, 50),
                        ),
                        onPressed: () {
                          final lhbmReports = LhbmReports(
                              userId: _auth.getCurrentUserId(),
                              date: _date.text,
                              area: _area.text,
                              agenda: _agenda.text,
                              agreement: _agreement.text,
                              conforme: _conforme.text,
                              status: _conforme.text);
                          try {
                            widget.toUpdate
                                ? ref
                                    .read(lhbmReportsRepositoryProvider)
                                    .editLHBMReport(
                                        lhbmReports, widget.reportId!)
                                : ref
                                    .read(lhbmReportsRepositoryProvider)
                                    .addLHBMReport(lhbmReports);

                            final successSnackbar = SnackBar(
                              backgroundColor: green,
                              content: Text(
                                widget.toUpdate
                                    ? 'Edited Successfully!'
                                    : 'Added Successfully!',
                              ),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(successSnackbar)
                                .closed
                                .then((data) => {
                                      widget.toUpdate
                                          ? setState(() {
                                              enableTextFields = false;
                                              showSaveButton = false;
                                            })
                                          : Navigator.pop(context)
                                    });
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
                                        .read(lhbmReportsRepositoryProvider)
                                        .deleteLHBMReport(widget.reportId!));
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
          )),
    );
  }
}
