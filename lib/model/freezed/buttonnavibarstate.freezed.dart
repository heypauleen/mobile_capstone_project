// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../buttonnavibarstate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ButtonNaviBarState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ButtonNaviBarStateCopyWith<ButtonNaviBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonNaviBarStateCopyWith<$Res> {
  factory $ButtonNaviBarStateCopyWith(
          ButtonNaviBarState value, $Res Function(ButtonNaviBarState) then) =
      _$ButtonNaviBarStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$ButtonNaviBarStateCopyWithImpl<$Res>
    implements $ButtonNaviBarStateCopyWith<$Res> {
  _$ButtonNaviBarStateCopyWithImpl(this._value, this._then);

  final ButtonNaviBarState _value;
  // ignore: unused_field
  final $Res Function(ButtonNaviBarState) _then;

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
abstract class _$$_ButtonNaviBarStateCopyWith<$Res>
    implements $ButtonNaviBarStateCopyWith<$Res> {
  factory _$$_ButtonNaviBarStateCopyWith(_$_ButtonNaviBarState value,
          $Res Function(_$_ButtonNaviBarState) then) =
      __$$_ButtonNaviBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$$_ButtonNaviBarStateCopyWithImpl<$Res>
    extends _$ButtonNaviBarStateCopyWithImpl<$Res>
    implements _$$_ButtonNaviBarStateCopyWith<$Res> {
  __$$_ButtonNaviBarStateCopyWithImpl(
      _$_ButtonNaviBarState _value, $Res Function(_$_ButtonNaviBarState) _then)
      : super(_value, (v) => _then(v as _$_ButtonNaviBarState));

  @override
  _$_ButtonNaviBarState get _value => super._value as _$_ButtonNaviBarState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_ButtonNaviBarState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ButtonNaviBarState implements _ButtonNaviBarState {
  const _$_ButtonNaviBarState({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'ButtonNaviBarState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ButtonNaviBarState &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_ButtonNaviBarStateCopyWith<_$_ButtonNaviBarState> get copyWith =>
      __$$_ButtonNaviBarStateCopyWithImpl<_$_ButtonNaviBarState>(
          this, _$identity);
}

abstract class _ButtonNaviBarState implements ButtonNaviBarState {
  const factory _ButtonNaviBarState({final int index}) = _$_ButtonNaviBarState;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ButtonNaviBarStateCopyWith<_$_ButtonNaviBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
