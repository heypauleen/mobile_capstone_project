import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/reports_transition_state.dart';

class ReportsTransitionNotifier extends StateNotifier<ReportsTransitionState> {
  ReportsTransitionNotifier() : super(const ReportsTransitionState());

  void pushHomePage() async {
    state = state.copyWith(reportsTransitionId: 0);
  }

  void pushMALReportsPage() async {
    state = state.copyWith(reportsTransitionId: 1);
  }

  void pushCMRReportsPage() async {
    state = state.copyWith(reportsTransitionId: 2);
  }

  void pushLHBReportsPage() async {
    state = state.copyWith(reportsTransitionId: 3);
  }
}

final reportsTransitionProvider = StateNotifierProvider.autoDispose<
    ReportsTransitionNotifier,
    ReportsTransitionState>((ref) => ReportsTransitionNotifier());
