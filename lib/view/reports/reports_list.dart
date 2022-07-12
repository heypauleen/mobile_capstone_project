import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/view/appbar.dart';

class ReportsList extends ConsumerStatefulWidget {
  const ReportsList({Key? key}) : super(key: key);

  @override
  _ReportsCardviewState createState() => _ReportsCardviewState();
}

class _ReportsCardviewState extends ConsumerState<ReportsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: appBar(context, ref),

    );
  }
}
