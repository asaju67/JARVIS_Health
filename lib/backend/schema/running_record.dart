import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RunningRecord extends FirestoreRecord {
  RunningRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hr_samples" field.
  List<int>? _hrSamples;
  List<int> get hrSamples => _hrSamples ?? const [];
  bool hasHrSamples() => _hrSamples != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _hrSamples = getDataList(snapshotData['hr_samples']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('running')
          : FirebaseFirestore.instance.collectionGroup('running');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('running').doc(id);

  static Stream<RunningRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RunningRecord.fromSnapshot(s));

  static Future<RunningRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RunningRecord.fromSnapshot(s));

  static RunningRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RunningRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RunningRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RunningRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RunningRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RunningRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRunningRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class RunningRecordDocumentEquality implements Equality<RunningRecord> {
  const RunningRecordDocumentEquality();

  @override
  bool equals(RunningRecord? e1, RunningRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.hrSamples, e2?.hrSamples);
  }

  @override
  int hash(RunningRecord? e) => const ListEquality().hash([e?.hrSamples]);

  @override
  bool isValidKey(Object? o) => o is RunningRecord;
}
