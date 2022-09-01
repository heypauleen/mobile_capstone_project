import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/lhbm_reports.freezed.dart';
part 'g/lhbm_reports.g.dart';

@freezed
class LhbmReports with _$LhbmReports {
  factory LhbmReports(
      {required String date,
      required String area,
      required String agenda,
      required String agreement,
      required String conforme,
      required String status,
      required String userId}) = _LhbmReports;

  factory LhbmReports.fromJson(Map<String, dynamic> json) =>
      _$LhbmReportsFromJson(json);
}
