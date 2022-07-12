import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/mal_reports.freezed.dart';
part 'g/mal_reports.g.dart';

@freezed
abstract class MalReports implements _$MalReports {
  const MalReports._();

  factory MalReports({
    //required String id,
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

  // factory MalReports.fromDocument(DocumentSnapshot doc) {
  //   final data = doc.data()!;
  //   return MalReports.fromJson(data).copyWith(id: doc.id);
  // }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
