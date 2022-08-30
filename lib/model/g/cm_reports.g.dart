// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../cm_reports.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CmReports _$$_CmReportsFromJson(Map<String, dynamic> json) => _$_CmReports(
      date: json['date'] as String,
      areaMonitored: json['areaMonitored'] as String,
      typeOfCoaching: json['typeOfCoaching'] as String,
      nameOfCoachee: json['nameOfCoachee'] as String,
      agenda: json['agenda'] as String,
      agreement: json['agreement'] as String,
      dateOfImplementation: json['dateOfImplementation'] as String,
      conforme: json['conforme'] as String,
      status: json['status'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_CmReportsToJson(_$_CmReports instance) =>
    <String, dynamic>{
      'date': instance.date,
      'areaMonitored': instance.areaMonitored,
      'typeOfCoaching': instance.typeOfCoaching,
      'nameOfCoachee': instance.nameOfCoachee,
      'agenda': instance.agenda,
      'agreement': instance.agreement,
      'dateOfImplementation': instance.dateOfImplementation,
      'conforme': instance.conforme,
      'status': instance.status,
      'userId': instance.userId,
    };
