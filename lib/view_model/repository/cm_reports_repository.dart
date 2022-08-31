import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/cm_reports.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';
import 'package:my_capstone_project/view_model/services/auth_exceptions.dart';

final cmReportsRepositoryProvider = Provider<CmReportsRepository>((ref) {
  return CmReportsRepository(ref.read);
});

class CmReportsRepository {
  final Reader read;
  CmReportsRepository(this.read);

  Stream streamAllCMReports({required String userId}) {
    return read(firebaseFirestoreProvider)
        .collection('cm_reports')
        .where('userId', isEqualTo: userId)
        .snapshots();
  }

  Future<bool> addCMReports(CmReports cmReports) async {
    try {
      await read(firebaseFirestoreProvider)
          .collection('cm_reports')
          .doc()
          .set(cmReports.toJson());
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }

  Future<bool> editCMReport(CmReports cmReport, String cmReportId) async {
    try {
      await read(firebaseFirestoreProvider)
          .collection('cm_reports')
          .doc(cmReportId)
          .update(cmReport.toJson());
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }

  Future<bool> deleteMalReport(String cmReportId) async {
    try {
      await read(firebaseFirestoreProvider)
          .collection('cm_reports')
          .doc(cmReportId)
          .delete();
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }
}
