import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/mal_reports.freezed.dart';
part 'g/mal_reports.g.dart';

@freezed
abstract class MalReports implements _$MalReports {
  const MalReports._();

  factory MalReports({
    required String userId,
    required String date,
    required String barangayHealthStation,
    required String ruralHEalthUnit,
    required String activities,
    required String findings,
    required String conforme,
  }) = _MalReports;

  factory MalReports.fromJson(Map<String, dynamic> json) =>
      _$MalReportsFromJson(json);
}
