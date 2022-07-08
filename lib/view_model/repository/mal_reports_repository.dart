import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/mal_reports.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';
import 'package:my_capstone_project/view_model/services/auth_exceptions.dart';

abstract class BaseMalReportsRepository {
  Future<void> addMalReports(
      {required String userId, required MalReports malReports});
}

final malReportsRepository =
    Provider<MalReportsRepository>((ref) => MalReportsRepository(ref.read));

class MalReportsRepository implements BaseMalReportsRepository {
  final Reader _read;
  const MalReportsRepository(this._read);

  @override
  Future<void> addMalReports({
    required String userId,
    required MalReports malReports,
  }) async {
    try {
      await _read(firebaseFirestoreProvider)
          .collection('mal_reports')
          .doc()
          .set(malReports.toJson());
    } on FirebaseException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }
}
