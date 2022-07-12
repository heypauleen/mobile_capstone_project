// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../bottomnavibar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNaviBarState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNaviBarStateCopyWith<BottomNaviBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNaviBarStateCopyWith<$Res> {
  factory $BottomNaviBarStateCopyWith(
          BottomNaviBarState value, $Res Function(BottomNaviBarState) then) =
      _$BottomNaviBarStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomNaviBarStateCopyWithImpl<$Res>
    implements $BottomNaviBarStateCopyWith<$Res> {
  _$BottomNaviBarStateCopyWithImpl(this._value, this._then);

  final BottomNaviBarState _value;
  // ignore: unused_field
  final $Res Function(BottomNaviBarState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ButtomNaviBarStateCopyWith<$Res>
    implements $BottomNaviBarStateCopyWith<$Res> {
  factory _$$_ButtomNaviBarStateCopyWith(_$_ButtomNaviBarState value,
          $Res Function(_$_ButtomNaviBarState) then) =
      __$$_ButtomNaviBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$$_ButtomNaviBarStateCopyWithImpl<$Res>
    extends _$BottomNaviBarStateCopyWithImpl<$Res>
    implements _$$_ButtomNaviBarStateCopyWith<$Res> {
  __$$_ButtomNaviBarStateCopyWithImpl(
      _$_ButtomNaviBarState _value, $Res Function(_$_ButtomNaviBarState) _then)
      : super(_value, (v) => _then(v as _$_ButtomNaviBarState));

  @override
  _$_ButtomNaviBarState get _value => super._value as _$_ButtomNaviBarState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_ButtomNaviBarState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ButtomNaviBarState implements _ButtomNaviBarState {
  const _$_ButtomNaviBarState({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'BottomNaviBarState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ButtomNaviBarState &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_ButtomNaviBarStateCopyWith<_$_ButtomNaviBarState> get copyWith =>
      __$$_ButtomNaviBarStateCopyWithImpl<_$_ButtomNaviBarState>(
          this, _$identity);
}

abstract class _ButtomNaviBarState implements BottomNaviBarState {
  const factory _ButtomNaviBarState({final int index}) = _$_ButtomNaviBarState;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ButtomNaviBarStateCopyWith<_$_ButtomNaviBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
