import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyRecord extends FirestoreRecord {
  DailyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "running" field.
  DocumentReference? _running;
  DocumentReference? get running => _running;
  bool hasRunning() => _running != null;

  // "resting" field.
  DocumentReference? _resting;
  DocumentReference? get resting => _resting;
  bool hasResting() => _resting != null;

  void _initializeFields() {
    _running = snapshotData['running'] as DocumentReference?;
    _resting = snapshotData['resting'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily');

  static Stream<DailyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyRecord.fromSnapshot(s));

  static Future<DailyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyRecord.fromSnapshot(s));

  static DailyRecord fromSnapshot(DocumentSnapshot snapshot) => DailyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyRecordData({
  DocumentReference? running,
  DocumentReference? resting,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'running': running,
      'resting': resting,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailyRecordDocumentEquality implements Equality<DailyRecord> {
  const DailyRecordDocumentEquality();

  @override
  bool equals(DailyRecord? e1, DailyRecord? e2) {
    return e1?.running == e2?.running && e1?.resting == e2?.resting;
  }

  @override
  int hash(DailyRecord? e) =>
      const ListEquality().hash([e?.running, e?.resting]);

  @override
  bool isValidKey(Object? o) => o is DailyRecord;
}
