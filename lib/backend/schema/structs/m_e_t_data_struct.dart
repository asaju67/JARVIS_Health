// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class METDataStruct extends FFFirebaseStruct {
  METDataStruct({
    int? avgLevel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _avgLevel = avgLevel,
        super(firestoreUtilData);

  // "avg_level" field.
  int? _avgLevel;
  int get avgLevel => _avgLevel ?? 0;
  set avgLevel(int? val) => _avgLevel = val;

  void incrementAvgLevel(int amount) => avgLevel = avgLevel + amount;

  bool hasAvgLevel() => _avgLevel != null;

  static METDataStruct fromMap(Map<String, dynamic> data) => METDataStruct(
        avgLevel: castToType<int>(data['avg_level']),
      );

  static METDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? METDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'avg_level': _avgLevel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'avg_level': serializeParam(
          _avgLevel,
          ParamType.int,
        ),
      }.withoutNulls;

  static METDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      METDataStruct(
        avgLevel: deserializeParam(
          data['avg_level'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'METDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is METDataStruct && avgLevel == other.avgLevel;
  }

  @override
  int get hashCode => const ListEquality().hash([avgLevel]);
}

METDataStruct createMETDataStruct({
  int? avgLevel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    METDataStruct(
      avgLevel: avgLevel,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

METDataStruct? updateMETDataStruct(
  METDataStruct? mETData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mETData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMETDataStructData(
  Map<String, dynamic> firestoreData,
  METDataStruct? mETData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mETData == null) {
    return;
  }
  if (mETData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mETData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mETDataData = getMETDataFirestoreData(mETData, forFieldValue);
  final nestedData = mETDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mETData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMETDataFirestoreData(
  METDataStruct? mETData, [
  bool forFieldValue = false,
]) {
  if (mETData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mETData.toMap());

  // Add any Firestore field values
  mETData.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMETDataListFirestoreData(
  List<METDataStruct>? mETDatas,
) =>
    mETDatas?.map((e) => getMETDataFirestoreData(e, true)).toList() ?? [];
