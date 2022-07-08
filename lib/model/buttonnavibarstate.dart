import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/buttonnavibarstate.freezed.dart';

@freezed
class ButtonNaviBarState with _$ButtonNaviBarState {
  const factory ButtonNaviBarState({
    @Default(0) int index,
  }) = _ButtonNaviBarState;
}
