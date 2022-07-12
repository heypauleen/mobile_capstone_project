import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/bottomnavibar_state.dart';

class BottomNaviBarNotifier extends StateNotifier<BottomNaviBarState> {
  BottomNaviBarNotifier() : super(const BottomNaviBarState());

  void currentButton(index) async {
    state = state.copyWith(index: index);
  }
}

final buttonNaviBarProvider = StateNotifierProvider.autoDispose<
    BottomNaviBarNotifier, BottomNaviBarState>(
      (ref) => BottomNaviBarNotifier(),
    );
