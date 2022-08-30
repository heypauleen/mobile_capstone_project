// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../mal_reports.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MalReports _$MalReportsFromJson(Map<String, dynamic> json) {
  return _MalReports.fromJson(json);
}

/// @nodoc
mixin _$MalReports {
  String get userId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get barangayHealthStation => throw _privateConstructorUsedError;
  String get ruralHEalthUnit => throw _privateConstructorUsedError;
  String get activities => throw _privateConstructorUsedError;
  String get findings => throw _privateConstructorUsedError;
  String get conforme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MalReportsCopyWith<MalReports> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MalReportsCopyWith<$Res> {
  factory $MalReportsCopyWith(
          MalReports value, $Res Function(MalReports) then) =
      _$MalReportsCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String date,
      String barangayHealthStation,
      String ruralHEalthUnit,
      String activities,
      String findings,
      String conforme});
}

/// @nodoc
class _$MalReportsCopyWithImpl<$Res> implements $MalReportsCopyWith<$Res> {
  _$MalReportsCopyWithImpl(this._value, this._then);

  final MalReports _value;
  // ignore: unused_field
  final $Res Function(MalReports) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? date = freezed,
    Object? barangayHealthStation = freezed,
    Object? ruralHEalthUnit = freezed,
    Object? activities = freezed,
    Object? findings = freezed,
    Object? conforme = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      barangayHealthStation: barangayHealthStation == freezed
          ? _value.barangayHealthStation
          : barangayHealthStation // ignore: cast_nullable_to_non_nullable
              as String,
      ruralHEalthUnit: ruralHEalthUnit == freezed
          ? _value.ruralHEalthUnit
          : ruralHEalthUnit // ignore: cast_nullable_to_non_nullable
              as String,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String,
      findings: findings == freezed
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String,
      conforme: conforme == freezed
          ? _value.conforme
          : conforme // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MalReportsCopyWith<$Res>
    implements $MalReportsCopyWith<$Res> {
  factory _$$_MalReportsCopyWith(
          _$_MalReports value, $Res Function(_$_MalReports) then) =
      __$$_MalReportsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String date,
      String barangayHealthStation,
      String ruralHEalthUnit,
      String activities,
      String findings,
      String conforme});
}

/// @nodoc
class __$$_MalReportsCopyWithImpl<$Res> extends _$MalReportsCopyWithImpl<$Res>
    implements _$$_MalReportsCopyWith<$Res> {
  __$$_MalReportsCopyWithImpl(
      _$_MalReports _value, $Res Function(_$_MalReports) _then)
      : super(_value, (v) => _then(v as _$_MalReports));

  @override
  _$_MalReports get _value => super._value as _$_MalReports;

  @override
  $Res call({
    Object? userId = freezed,
    Object? date = freezed,
    Object? barangayHealthStation = freezed,
    Object? ruralHEalthUnit = freezed,
    Object? activities = freezed,
    Object? findings = freezed,
    Object? conforme = freezed,
  }) {
    return _then(_$_MalReports(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      barangayHealthStation: barangayHealthStation == freezed
          ? _value.barangayHealthStation
          : barangayHealthStation // ignore: cast_nullable_to_non_nullable
              as String,
      ruralHEalthUnit: ruralHEalthUnit == freezed
          ? _value.ruralHEalthUnit
          : ruralHEalthUnit // ignore: cast_nullable_to_non_nullable
              as String,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String,
      findings: findings == freezed
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String,
      conforme: conforme == freezed
          ? _value.conforme
          : conforme // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MalReports extends _MalReports {
  _$_MalReports(
      {required this.userId,
      required this.date,
      required this.barangayHealthStation,
      required this.ruralHEalthUnit,
      required this.activities,
      required this.findings,
      required this.conforme})
      : super._();

  factory _$_MalReports.fromJson(Map<String, dynamic> json) =>
      _$$_MalReportsFromJson(json);

  @override
  final String userId;
  @override
  final String date;
  @override
  final String barangayHealthStation;
  @override
  final String ruralHEalthUnit;
  @override
  final String activities;
  @override
  final String findings;
  @override
  final String conforme;

  @override
  String toString() {
    return 'MalReports(userId: $userId, date: $date, barangayHealthStation: $barangayHealthStation, ruralHEalthUnit: $ruralHEalthUnit, activities: $activities, findings: $findings, conforme: $conforme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MalReports &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.barangayHealthStation, barangayHealthStation) &&
            const DeepCollectionEquality()
                .equals(other.ruralHEalthUnit, ruralHEalthUnit) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality().equals(other.findings, findings) &&
            const DeepCollectionEquality().equals(other.conforme, conforme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(barangayHealthStation),
      const DeepCollectionEquality().hash(ruralHEalthUnit),
      const DeepCollectionEquality().hash(activities),
      const DeepCollectionEquality().hash(findings),
      const DeepCollectionEquality().hash(conforme));

  @JsonKey(ignore: true)
  @override
  _$$_MalReportsCopyWith<_$_MalReports> get copyWith =>
      __$$_MalReportsCopyWithImpl<_$_MalReports>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MalReportsToJson(this);
  }
}

abstract class _MalReports extends MalReports {
  factory _MalReports(
      {required final String userId,
      required final String date,
      required final String barangayHealthStation,
      required final String ruralHEalthUnit,
      required final String activities,
      required final String findings,
      required final String conforme}) = _$_MalReports;
  _MalReports._() : super._();

  factory _MalReports.fromJson(Map<String, dynamic> json) =
      _$_MalReports.fromJson;

  @override
  String get userId;
  @override
  String get date;
  @override
  String get barangayHealthStation;
  @override
  String get ruralHEalthUnit;
  @override
  String get activities;
  @override
  String get findings;
  @override
  String get conforme;
  @override
  @JsonKey(ignore: true)
  _$$_MalReportsCopyWith<_$_MalReports> get copyWith =>
      throw _privateConstructorUsedError;
}
