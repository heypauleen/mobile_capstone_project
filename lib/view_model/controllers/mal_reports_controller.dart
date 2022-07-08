import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/mal_reports.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';
import 'package:my_capstone_project/view_model/repository/mal_reports_repository.dart';
import 'package:my_capstone_project/view_model/services/auth_exceptions.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

final malReportsControllerProvider = Provider<MalReportsController>((ref) {
  final user = ref.watch(authStateProvider).value;
  return MalReportsController(ref.read, user?.uid);
});

class MalReportsController extends StateNotifier<AsyncValue<List<MalReports>>> {
  final Reader _read;
  final String? _userId;

  MalReportsController(this._read, this._userId) : super(AsyncValue.loading());

  Future<void> addMalReports({
    required String userId,
    required String date,
    required String barangayHealthStation,
    required String ruralHEalthUnit,
    required String activities,
    required String findings,
    required String conforme,
  }) async {
    try {
      final malReports = MalReports(
          userId: userId,
          date: date,
          barangayHealthStation: barangayHealthStation,
          ruralHEalthUnit: ruralHEalthUnit,
          activities: activities,
          findings: findings,
          conforme: conforme);
      await _read(malReportsRepository).addMalReports(
        userId: _userId!,
        malReports: malReports,
      );
      state.whenData((malreports) =>
          state = AsyncValue.data(malreports..add(malReports.copyWith())));
    } on GenericAuthException catch (_) {}
  }
}
