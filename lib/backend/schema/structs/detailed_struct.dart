// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailedStruct extends FFFirebaseStruct {
  DetailedStruct({
    List<HrvSamplesRmssd>? hrvSamplesRmssd,
    List<HrvSamplesSdnn>? hrvSamplesSdnn,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hrvSamplesRmssd = hrvSamplesRmssd,
        _hrvSamplesSdnn = hrvSamplesSdnn,
        super(firestoreUtilData);

  // "hrv_samples_rmssd" field.
  List<HrvSamplesRmssd>? _hrvSamplesRmssd;
  List<HrvSamplesRmssd> get hrvSamplesRmssd => _hrvSamplesRmssd ?? const [];
  set hrvSamplesRmssd(List<HrvSamplesRmssd>? val) => _hrvSamplesRmssd = val;

  void updateHrvSamplesRmssd(Function(List<HrvSamplesRmssd>) updateFn) {
    updateFn(_hrvSamplesRmssd ??= []);
  }

  bool hasHrvSamplesRmssd() => _hrvSamplesRmssd != null;

  // "hrv_samples_sdnn" field.
  List<HrvSamplesSdnn>? _hrvSamplesSdnn;
  List<HrvSamplesSdnn> get hrvSamplesSdnn => _hrvSamplesSdnn ?? const [];
  set hrvSamplesSdnn(List<HrvSamplesSdnn>? val) => _hrvSamplesSdnn = val;

  void updateHrvSamplesSdnn(Function(List<HrvSamplesSdnn>) updateFn) {
    updateFn(_hrvSamplesSdnn ??= []);
  }

  bool hasHrvSamplesSdnn() => _hrvSamplesSdnn != null;

  static DetailedStruct fromMap(Map<String, dynamic> data) => DetailedStruct(
        hrvSamplesRmssd:
            getEnumList<HrvSamplesRmssd>(data['hrv_samples_rmssd']),
        hrvSamplesSdnn: getEnumList<HrvSamplesSdnn>(data['hrv_samples_sdnn']),
      );

  static DetailedStruct? maybeFromMap(dynamic data) =>
      data is Map ? DetailedStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'hrv_samples_rmssd':
            _hrvSamplesRmssd?.map((e) => e.serialize()).toList(),
        'hrv_samples_sdnn': _hrvSamplesSdnn?.map((e) => e.serialize()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hrv_samples_rmssd': serializeParam(
          _hrvSamplesRmssd,
          ParamType.Enum,
          isList: true,
        ),
        'hrv_samples_sdnn': serializeParam(
          _hrvSamplesSdnn,
          ParamType.Enum,
          isList: true,
        ),
      }.withoutNulls;

  static DetailedStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailedStruct(
        hrvSamplesRmssd: deserializeParam<HrvSamplesRmssd>(
          data['hrv_samples_rmssd'],
          ParamType.Enum,
          true,
        ),
        hrvSamplesSdnn: deserializeParam<HrvSamplesSdnn>(
          data['hrv_samples_sdnn'],
          ParamType.Enum,
          true,
        ),
      );

  @override
  String toString() => 'DetailedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DetailedStruct &&
        listEquality.equals(hrvSamplesRmssd, other.hrvSamplesRmssd) &&
        listEquality.equals(hrvSamplesSdnn, other.hrvSamplesSdnn);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([hrvSamplesRmssd, hrvSamplesSdnn]);
}

DetailedStruct createDetailedStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DetailedStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DetailedStruct? updateDetailedStruct(
  DetailedStruct? detailed, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    detailed
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDetailedStructData(
  Map<String, dynamic> firestoreData,
  DetailedStruct? detailed,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (detailed == null) {
    return;
  }
  if (detailed.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && detailed.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final detailedData = getDetailedFirestoreData(detailed, forFieldValue);
  final nestedData = detailedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = detailed.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDetailedFirestoreData(
  DetailedStruct? detailed, [
  bool forFieldValue = false,
]) {
  if (detailed == null) {
    return {};
  }
  final firestoreData = mapToFirestore(detailed.toMap());

  // Add any Firestore field values
  detailed.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDetailedListFirestoreData(
  List<DetailedStruct>? detaileds,
) =>
    detaileds?.map((e) => getDetailedFirestoreData(e, true)).toList() ?? [];
