import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/bottomnavibar_state.freezed.dart';

@freezed
class BottomNaviBarState with _$BottomNaviBarState {
  const factory BottomNaviBarState({
    @Default(0) int index,
  }) = _ButtomNaviBarState;
}
