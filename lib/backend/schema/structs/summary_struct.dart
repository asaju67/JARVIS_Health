// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SummaryStruct extends FFFirebaseStruct {
  SummaryStruct({
    double? avgHrBpm,
    int? avgHrvRmssd,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _avgHrBpm = avgHrBpm,
        _avgHrvRmssd = avgHrvRmssd,
        super(firestoreUtilData);

  // "avg_hr_bpm" field.
  double? _avgHrBpm;
  double get avgHrBpm => _avgHrBpm ?? 0.0;
  set avgHrBpm(double? val) => _avgHrBpm = val;

  void incrementAvgHrBpm(double amount) => avgHrBpm = avgHrBpm + amount;

  bool hasAvgHrBpm() => _avgHrBpm != null;

  // "avg_hrv_rmssd" field.
  int? _avgHrvRmssd;
  int get avgHrvRmssd => _avgHrvRmssd ?? 0;
  set avgHrvRmssd(int? val) => _avgHrvRmssd = val;

  void incrementAvgHrvRmssd(int amount) => avgHrvRmssd = avgHrvRmssd + amount;

  bool hasAvgHrvRmssd() => _avgHrvRmssd != null;

  static SummaryStruct fromMap(Map<String, dynamic> data) => SummaryStruct(
        avgHrBpm: castToType<double>(data['avg_hr_bpm']),
        avgHrvRmssd: castToType<int>(data['avg_hrv_rmssd']),
      );

  static SummaryStruct? maybeFromMap(dynamic data) =>
      data is Map ? SummaryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'avg_hr_bpm': _avgHrBpm,
        'avg_hrv_rmssd': _avgHrvRmssd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'avg_hr_bpm': serializeParam(
          _avgHrBpm,
          ParamType.double,
        ),
        'avg_hrv_rmssd': serializeParam(
          _avgHrvRmssd,
          ParamType.int,
        ),
      }.withoutNulls;

  static SummaryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SummaryStruct(
        avgHrBpm: deserializeParam(
          data['avg_hr_bpm'],
          ParamType.double,
          false,
        ),
        avgHrvRmssd: deserializeParam(
          data['avg_hrv_rmssd'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SummaryStruct &&
        avgHrBpm == other.avgHrBpm &&
        avgHrvRmssd == other.avgHrvRmssd;
  }

  @override
  int get hashCode => const ListEquality().hash([avgHrBpm, avgHrvRmssd]);
}

SummaryStruct createSummaryStruct({
  double? avgHrBpm,
  int? avgHrvRmssd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SummaryStruct(
      avgHrBpm: avgHrBpm,
      avgHrvRmssd: avgHrvRmssd,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SummaryStruct? updateSummaryStruct(
  SummaryStruct? summary, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    summary
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSummaryStructData(
  Map<String, dynamic> firestoreData,
  SummaryStruct? summary,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (summary == null) {
    return;
  }
  if (summary.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && summary.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final summaryData = getSummaryFirestoreData(summary, forFieldValue);
  final nestedData = summaryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = summary.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSummaryFirestoreData(
  SummaryStruct? summary, [
  bool forFieldValue = false,
]) {
  if (summary == null) {
    return {};
  }
  final firestoreData = mapToFirestore(summary.toMap());

  // Add any Firestore field values
  summary.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSummaryListFirestoreData(
  List<SummaryStruct>? summarys,
) =>
    summarys?.map((e) => getSummaryFirestoreData(e, true)).toList() ?? [];
