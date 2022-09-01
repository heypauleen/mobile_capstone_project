import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/lhbm_reports.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';
import 'package:my_capstone_project/view_model/services/auth_exceptions.dart';

final lhbmReportsRepositoryProvider = Provider<LHBMReportsRepository>((ref) {
  return LHBMReportsRepository(ref.read);
});

class LHBMReportsRepository {
  final Reader _read;

  LHBMReportsRepository(this._read) : super();

  Stream streamAllLHBMReports({required String userId}) {
    return _read(firebaseFirestoreProvider)
        .collection("lhbm_reports")
        .where("userId", isEqualTo: userId)
        .snapshots();
  }

  Future<bool> addLHBMReport(LhbmReports lhbmReports) async {
    try {
      await _read(firebaseFirestoreProvider)
          .collection('lhbm_reports')
          .doc()
          .set(lhbmReports.toJson());
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }

  Future<bool> editLHBMReport(
      LhbmReports lhbmReport, String lhbmReportId) async {
    try {
      await _read(firebaseFirestoreProvider)
          .collection('lhbm_reports')
          .doc(lhbmReportId)
          .update(lhbmReport.toJson());
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }

  Future<bool> deleteLHBMReport(String lhbmReportId) async {
    try {
      await _read(firebaseFirestoreProvider)
          .collection('mal_reports')
          .doc(lhbmReportId)
          .delete();
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }
}
