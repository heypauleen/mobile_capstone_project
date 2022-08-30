// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../reports_transition_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportsTransitionState {
  int get reportsTransitionId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportsTransitionStateCopyWith<ReportsTransitionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsTransitionStateCopyWith<$Res> {
  factory $ReportsTransitionStateCopyWith(ReportsTransitionState value,
          $Res Function(ReportsTransitionState) then) =
      _$ReportsTransitionStateCopyWithImpl<$Res>;
  $Res call({int reportsTransitionId});
}

/// @nodoc
class _$ReportsTransitionStateCopyWithImpl<$Res>
    implements $ReportsTransitionStateCopyWith<$Res> {
  _$ReportsTransitionStateCopyWithImpl(this._value, this._then);

  final ReportsTransitionState _value;
  // ignore: unused_field
  final $Res Function(ReportsTransitionState) _then;

  @override
  $Res call({
    Object? reportsTransitionId = freezed,
  }) {
    return _then(_value.copyWith(
      reportsTransitionId: reportsTransitionId == freezed
          ? _value.reportsTransitionId
          : reportsTransitionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ReportsTransitionCopyWith<$Res>
    implements $ReportsTransitionStateCopyWith<$Res> {
  factory _$$_ReportsTransitionCopyWith(_$_ReportsTransition value,
          $Res Function(_$_ReportsTransition) then) =
      __$$_ReportsTransitionCopyWithImpl<$Res>;
  @override
  $Res call({int reportsTransitionId});
}

/// @nodoc
class __$$_ReportsTransitionCopyWithImpl<$Res>
    extends _$ReportsTransitionStateCopyWithImpl<$Res>
    implements _$$_ReportsTransitionCopyWith<$Res> {
  __$$_ReportsTransitionCopyWithImpl(
      _$_ReportsTransition _value, $Res Function(_$_ReportsTransition) _then)
      : super(_value, (v) => _then(v as _$_ReportsTransition));

  @override
  _$_ReportsTransition get _value => super._value as _$_ReportsTransition;

  @override
  $Res call({
    Object? reportsTransitionId = freezed,
  }) {
    return _then(_$_ReportsTransition(
      reportsTransitionId: reportsTransitionId == freezed
          ? _value.reportsTransitionId
          : reportsTransitionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReportsTransition implements _ReportsTransition {
  const _$_ReportsTransition({this.reportsTransitionId = 0});

  @override
  @JsonKey()
  final int reportsTransitionId;

  @override
  String toString() {
    return 'ReportsTransitionState(reportsTransitionId: $reportsTransitionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportsTransition &&
            const DeepCollectionEquality()
                .equals(other.reportsTransitionId, reportsTransitionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(reportsTransitionId));

  @JsonKey(ignore: true)
  @override
  _$$_ReportsTransitionCopyWith<_$_ReportsTransition> get copyWith =>
      __$$_ReportsTransitionCopyWithImpl<_$_ReportsTransition>(
          this, _$identity);
}

abstract class _ReportsTransition implements ReportsTransitionState {
  const factory _ReportsTransition({final int reportsTransitionId}) =
      _$_ReportsTransition;

  @override
  int get reportsTransitionId;
  @override
  @JsonKey(ignore: true)
  _$$_ReportsTransitionCopyWith<_$_ReportsTransition> get copyWith =>
      throw _privateConstructorUsedError;
}
