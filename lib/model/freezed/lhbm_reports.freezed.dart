// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../lhbm_reports.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LhbmReports _$LhbmReportsFromJson(Map<String, dynamic> json) {
  return _LhbmReports.fromJson(json);
}

/// @nodoc
mixin _$LhbmReports {
  String get date => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get agenda => throw _privateConstructorUsedError;
  String get agreement => throw _privateConstructorUsedError;
  String get conforme => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LhbmReportsCopyWith<LhbmReports> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LhbmReportsCopyWith<$Res> {
  factory $LhbmReportsCopyWith(
          LhbmReports value, $Res Function(LhbmReports) then) =
      _$LhbmReportsCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String area,
      String agenda,
      String agreement,
      String conforme,
      String status,
      String userId});
}

/// @nodoc
class _$LhbmReportsCopyWithImpl<$Res> implements $LhbmReportsCopyWith<$Res> {
  _$LhbmReportsCopyWithImpl(this._value, this._then);

  final LhbmReports _value;
  // ignore: unused_field
  final $Res Function(LhbmReports) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? area = freezed,
    Object? agenda = freezed,
    Object? agreement = freezed,
    Object? conforme = freezed,
    Object? status = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as String,
      agreement: agreement == freezed
          ? _value.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as String,
      conforme: conforme == freezed
          ? _value.conforme
          : conforme // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LhbmReportsCopyWith<$Res>
    implements $LhbmReportsCopyWith<$Res> {
  factory _$$_LhbmReportsCopyWith(
          _$_LhbmReports value, $Res Function(_$_LhbmReports) then) =
      __$$_LhbmReportsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String area,
      String agenda,
      String agreement,
      String conforme,
      String status,
      String userId});
}

/// @nodoc
class __$$_LhbmReportsCopyWithImpl<$Res> extends _$LhbmReportsCopyWithImpl<$Res>
    implements _$$_LhbmReportsCopyWith<$Res> {
  __$$_LhbmReportsCopyWithImpl(
      _$_LhbmReports _value, $Res Function(_$_LhbmReports) _then)
      : super(_value, (v) => _then(v as _$_LhbmReports));

  @override
  _$_LhbmReports get _value => super._value as _$_LhbmReports;

  @override
  $Res call({
    Object? date = freezed,
    Object? area = freezed,
    Object? agenda = freezed,
    Object? agreement = freezed,
    Object? conforme = freezed,
    Object? status = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_LhbmReports(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as String,
      agreement: agreement == freezed
          ? _value.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as String,
      conforme: conforme == freezed
          ? _value.conforme
          : conforme // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LhbmReports implements _LhbmReports {
  _$_LhbmReports(
      {required this.date,
      required this.area,
      required this.agenda,
      required this.agreement,
      required this.conforme,
      required this.status,
      required this.userId});

  factory _$_LhbmReports.fromJson(Map<String, dynamic> json) =>
      _$$_LhbmReportsFromJson(json);

  @override
  final String date;
  @override
  final String area;
  @override
  final String agenda;
  @override
  final String agreement;
  @override
  final String conforme;
  @override
  final String status;
  @override
  final String userId;

  @override
  String toString() {
    return 'LhbmReports(date: $date, area: $area, agenda: $agenda, agreement: $agreement, conforme: $conforme, status: $status, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LhbmReports &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.agenda, agenda) &&
            const DeepCollectionEquality().equals(other.agreement, agreement) &&
            const DeepCollectionEquality().equals(other.conforme, conforme) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(agenda),
      const DeepCollectionEquality().hash(agreement),
      const DeepCollectionEquality().hash(conforme),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_LhbmReportsCopyWith<_$_LhbmReports> get copyWith =>
      __$$_LhbmReportsCopyWithImpl<_$_LhbmReports>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LhbmReportsToJson(this);
  }
}

abstract class _LhbmReports implements LhbmReports {
  factory _LhbmReports(
      {required final String date,
      required final String area,
      required final String agenda,
      required final String agreement,
      required final String conforme,
      required final String status,
      required final String userId}) = _$_LhbmReports;

  factory _LhbmReports.fromJson(Map<String, dynamic> json) =
      _$_LhbmReports.fromJson;

  @override
  String get date;
  @override
  String get area;
  @override
  String get agenda;
  @override
  String get agreement;
  @override
  String get conforme;
  @override
  String get status;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_LhbmReportsCopyWith<_$_LhbmReports> get copyWith =>
      throw _privateConstructorUsedError;
}
