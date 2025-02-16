// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import '/flutter_flow/flutter_flow_util.dart';

class HeartRateDataStruct extends FFFirebaseStruct {
  HeartRateDataStruct({
    Detailed? detailed,
    Summary? summary,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _detailed = detailed,
        _summary = summary,
        super(firestoreUtilData);

  // "detailed" field.
  Detailed? _detailed;
  Detailed get detailed => _detailed ?? Detailed.hr_samples;
  set detailed(Detailed? val) => _detailed = val;

  bool hasDetailed() => _detailed != null;

  // "summary" field.
  Summary? _summary;
  Summary get summary => _summary ?? Summary.avg_hr_bpm;
  set summary(Summary? val) => _summary = val;

  bool hasSummary() => _summary != null;

  static HeartRateDataStruct fromMap(Map<String, dynamic> data) =>
      HeartRateDataStruct(
        detailed: data['detailed'] is Detailed
            ? data['detailed']
            : deserializeEnum<Detailed>(data['detailed']),
        summary: data['summary'] is Summary
            ? data['summary']
            : deserializeEnum<Summary>(data['summary']),
      );

  static HeartRateDataStruct? maybeFromMap(dynamic data) => data is Map
      ? HeartRateDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'detailed': _detailed?.serialize(),
        'summary': _summary?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'detailed': serializeParam(
          _detailed,
          ParamType.Enum,
        ),
        'summary': serializeParam(
          _summary,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static HeartRateDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      HeartRateDataStruct(
        detailed: deserializeParam<Detailed>(
          data['detailed'],
          ParamType.Enum,
          false,
        ),
        summary: deserializeParam<Summary>(
          data['summary'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'HeartRateDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HeartRateDataStruct &&
        detailed == other.detailed &&
        summary == other.summary;
  }

  @override
  int get hashCode => const ListEquality().hash([detailed, summary]);
}

HeartRateDataStruct createHeartRateDataStruct({
  Detailed? detailed,
  Summary? summary,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HeartRateDataStruct(
      detailed: detailed,
      summary: summary,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HeartRateDataStruct? updateHeartRateDataStruct(
  HeartRateDataStruct? heartRateData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    heartRateData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHeartRateDataStructData(
  Map<String, dynamic> firestoreData,
  HeartRateDataStruct? heartRateData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (heartRateData == null) {
    return;
  }
  if (heartRateData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && heartRateData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final heartRateDataData =
      getHeartRateDataFirestoreData(heartRateData, forFieldValue);
  final nestedData =
      heartRateDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = heartRateData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHeartRateDataFirestoreData(
  HeartRateDataStruct? heartRateData, [
  bool forFieldValue = false,
]) {
  if (heartRateData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(heartRateData.toMap());

  // Add any Firestore field values
  heartRateData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHeartRateDataListFirestoreData(
  List<HeartRateDataStruct>? heartRateDatas,
) =>
    heartRateDatas
        ?.map((e) => getHeartRateDataFirestoreData(e, true))
        .toList() ??
    [];
