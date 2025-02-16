import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestingRecord extends FirestoreRecord {
  RestingRecord._(
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
          ? parent.collection('resting')
          : FirebaseFirestore.instance.collectionGroup('resting');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('resting').doc(id);

  static Stream<RestingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestingRecord.fromSnapshot(s));

  static Future<RestingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestingRecord.fromSnapshot(s));

  static RestingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestingRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class RestingRecordDocumentEquality implements Equality<RestingRecord> {
  const RestingRecordDocumentEquality();

  @override
  bool equals(RestingRecord? e1, RestingRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.hrSamples, e2?.hrSamples);
  }

  @override
  int hash(RestingRecord? e) => const ListEquality().hash([e?.hrSamples]);

  @override
  bool isValidKey(Object? o) => o is RestingRecord;
}
