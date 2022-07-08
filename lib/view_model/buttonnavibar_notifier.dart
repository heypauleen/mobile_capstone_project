import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/buttonnavibarstate.dart';

class ButtonNaviBarNotifier extends StateNotifier<ButtonNaviBarState> {
  ButtonNaviBarNotifier() : super(const ButtonNaviBarState());

  void currentButton(index) async {
    state = state.copyWith(index: index);
  }
}

final buttonNaviBarProvider = StateNotifierProvider.autoDispose<
    ButtonNaviBarNotifier, ButtonNaviBarState>(
      (ref) => ButtonNaviBarNotifier(),
    );
