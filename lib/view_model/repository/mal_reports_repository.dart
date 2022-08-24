import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/model/mal_reports.dart';
import 'package:my_capstone_project/view_model/provider/auth_provider.dart';
import 'package:my_capstone_project/view_model/services/auth_exceptions.dart';

final malReportsRepositoryProvider = Provider<MalReportsRepository>((ref) {
  //final user = ref.watch(authStateProvider).value;
  return MalReportsRepository(ref.read);
});

// final firebaseIdeaProvider = StreamProvider.autoDispose<List<MalReports>>((ref) {
//   final stream = FirebaseFirestore.instance.collection('ideas').snapshots();
//   return stream.map((snapshot) => snapshot.docs.map((doc) => Idea.fromJson(doc.data())).toList());
// });

class MalReportsRepository {
  final Reader _read;
  // final String? _userId;

  MalReportsRepository(this._read) : super();

  // Stream allMalReports() {
  //   return _read(firebaseFirestoreProvider).collection("mal_reports").where("userId", isEqualTo: userId).snapshots();
  // }
    Stream allMalReports({required String userId}) {
    return _read(firebaseFirestoreProvider).collection("mal_reports").where("userId", isEqualTo: userId).snapshots();
  }



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
      await _read(firebaseFirestoreProvider)
          .collection('mal_reports')
          .doc()
          .set(malReports.toJson());

    //   state.whenData((malreports) =>
    //       state = AsyncValue.data(malreports..add(malReports.copyWith())));
    } on FirebaseAuthException catch (e) {
      throw GenericAuthException(message: e.message);
    }
  }

}
