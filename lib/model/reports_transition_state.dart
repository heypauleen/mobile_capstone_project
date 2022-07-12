
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/reports_transition_state.freezed.dart';

@freezed
class ReportsTransitionState with _$ReportsTransitionState {
  const factory ReportsTransitionState({
    @Default(0) int reportsTransitionId,
  }) = _ReportsTransition;
	
}
