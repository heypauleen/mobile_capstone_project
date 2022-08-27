import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/mal_reports.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';
import 'package:my_capstone_project/view_model/services/auth_exceptions.dart';

final malReportsRepositoryProvider = Provider<MalReportsRepository>((ref) {
  return MalReportsRepository(ref.read);
});

class MalReportsRepository {
  final Reader _read;

  MalReportsRepository(this._read) : super();

  Stream streamAllMALReports({required String userId}) {
    return _read(firebaseFirestoreProvider)
        .collection("mal_reports")
        .where("userId", isEqualTo: userId)
        .snapshots();
  }

  Future<bool> addMalReport(MalReports malReports) async {
    try {
      await _read(firebaseFirestoreProvider)
          .collection('mal_reports')
          .doc()
          .set(malReports.toJson());
      return true;

      //   state.whenData((malreports) =>
      //       state = AsyncValue.data(malreports..add(malReports.copyWith())));
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }

  Future<bool> editMalReport(MalReports malReport, String malReportId) async {
    try {
      await _read(firebaseFirestoreProvider)
          .collection('mal_reports')
          .doc(malReportId)
          .update(malReport.toJson());
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }

  Future<bool> deleteMalReport(String malReportId) async {
    try {
      await _read(firebaseFirestoreProvider)
          .collection('mal_reports')
          .doc(malReportId)
          .delete();
      return true;
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }
}
