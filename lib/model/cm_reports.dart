import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/cm_reports.freezed.dart';
part 'g/cm_reports.g.dart';

@freezed
class CmReports with _$CmReports {
  factory CmReports({
    required String date,
    required String areaMonitored,
    required String typeOfCoaching,
    required String nameOfCoachee,
    required String agenda,
    required String agreement,
    required String dateOfImplementation,
    required String conforme,
    required String status,
    required String userId,
  }) = _CmReports;

  factory CmReports.fromJson(Map<String, dynamic> json) =>
      _$CmReportsFromJson(json);
}
