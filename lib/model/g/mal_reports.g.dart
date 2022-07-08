// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../mal_reports.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MalReports _$$_MalReportsFromJson(Map<String, dynamic> json) =>
    _$_MalReports(
      userId: json['userId'] as String,
      date: json['date'] as String,
      barangayHealthStation: json['barangayHealthStation'] as String,
      ruralHEalthUnit: json['ruralHEalthUnit'] as String,
      activities: json['activities'] as String,
      findings: json['findings'] as String,
      conforme: json['conforme'] as String,
    );

Map<String, dynamic> _$$_MalReportsToJson(_$_MalReports instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'date': instance.date,
      'barangayHealthStation': instance.barangayHealthStation,
      'ruralHEalthUnit': instance.ruralHEalthUnit,
      'activities': instance.activities,
      'findings': instance.findings,
      'conforme': instance.conforme,
    };
