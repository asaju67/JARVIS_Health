import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TerraRecord extends FirestoreRecord {
  TerraRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "MET_data" field.
  METData? _mETData;
  METData? get mETData => _mETData;
  bool hasMETData() => _mETData != null;

  // "active_durations_data" field.
  ActiveDurationsData? _activeDurationsData;
  ActiveDurationsData? get activeDurationsData => _activeDurationsData;
  bool hasActiveDurationsData() => _activeDurationsData != null;

  // "calories_data" field.
  CaloriesData? _caloriesData;
  CaloriesData? get caloriesData => _caloriesData;
  bool hasCaloriesData() => _caloriesData != null;

  // "data_enrichment" field.
  DataEnrichment? _dataEnrichment;
  DataEnrichment? get dataEnrichment => _dataEnrichment;
  bool hasDataEnrichment() => _dataEnrichment != null;

  // "device_data" field.
  DeviceData? _deviceData;
  DeviceData? get deviceData => _deviceData;
  bool hasDeviceData() => _deviceData != null;

  // "distance_data" field.
  DistanceData? _distanceData;
  DistanceData? get distanceData => _distanceData;
  bool hasDistanceData() => _distanceData != null;

  // "heart_rate_data" field.
  HeartRateData? _heartRateData;
  HeartRateData? get heartRateData => _heartRateData;
  bool hasHeartRateData() => _heartRateData != null;

  // "metadata" field.
  Metadata? _metadata;
  Metadata? get metadata => _metadata;
  bool hasMetadata() => _metadata != null;

  // "oxygen_data" field.
  OxygenData? _oxygenData;
  OxygenData? get oxygenData => _oxygenData;
  bool hasOxygenData() => _oxygenData != null;

  // "scores" field.
  Scores? _scores;
  Scores? get scores => _scores;
  bool hasScores() => _scores != null;

  // "strain_data" field.
  StrainData? _strainData;
  StrainData? get strainData => _strainData;
  bool hasStrainData() => _strainData != null;

  // "stress_data" field.
  StressData? _stressData;
  StressData? get stressData => _stressData;
  bool hasStressData() => _stressData != null;

  // "tag_data" field.
  TagData? _tagData;
  TagData? get tagData => _tagData;
  bool hasTagData() => _tagData != null;

  // "user" field.
  User? _user;
  User? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _mETData = snapshotData['MET_data'] is METData
        ? snapshotData['MET_data']
        : deserializeEnum<METData>(snapshotData['MET_data']);
    _activeDurationsData =
        snapshotData['active_durations_data'] is ActiveDurationsData
            ? snapshotData['active_durations_data']
            : deserializeEnum<ActiveDurationsData>(
                snapshotData['active_durations_data']);
    _caloriesData = snapshotData['calories_data'] is CaloriesData
        ? snapshotData['calories_data']
        : deserializeEnum<CaloriesData>(snapshotData['calories_data']);
    _dataEnrichment = snapshotData['data_enrichment'] is DataEnrichment
        ? snapshotData['data_enrichment']
        : deserializeEnum<DataEnrichment>(snapshotData['data_enrichment']);
    _deviceData = snapshotData['device_data'] is DeviceData
        ? snapshotData['device_data']
        : deserializeEnum<DeviceData>(snapshotData['device_data']);
    _distanceData = snapshotData['distance_data'] is DistanceData
        ? snapshotData['distance_data']
        : deserializeEnum<DistanceData>(snapshotData['distance_data']);
    _heartRateData = snapshotData['heart_rate_data'] is HeartRateData
        ? snapshotData['heart_rate_data']
        : deserializeEnum<HeartRateData>(snapshotData['heart_rate_data']);
    _metadata = snapshotData['metadata'] is Metadata
        ? snapshotData['metadata']
        : deserializeEnum<Metadata>(snapshotData['metadata']);
    _oxygenData = snapshotData['oxygen_data'] is OxygenData
        ? snapshotData['oxygen_data']
        : deserializeEnum<OxygenData>(snapshotData['oxygen_data']);
    _scores = snapshotData['scores'] is Scores
        ? snapshotData['scores']
        : deserializeEnum<Scores>(snapshotData['scores']);
    _strainData = snapshotData['strain_data'] is StrainData
        ? snapshotData['strain_data']
        : deserializeEnum<StrainData>(snapshotData['strain_data']);
    _stressData = snapshotData['stress_data'] is StressData
        ? snapshotData['stress_data']
        : deserializeEnum<StressData>(snapshotData['stress_data']);
    _tagData = snapshotData['tag_data'] is TagData
        ? snapshotData['tag_data']
        : deserializeEnum<TagData>(snapshotData['tag_data']);
    _user = snapshotData['user'] is User
        ? snapshotData['user']
        : deserializeEnum<User>(snapshotData['user']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('terra');

  static Stream<TerraRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TerraRecord.fromSnapshot(s));

  static Future<TerraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TerraRecord.fromSnapshot(s));

  static TerraRecord fromSnapshot(DocumentSnapshot snapshot) => TerraRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TerraRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TerraRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TerraRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TerraRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTerraRecordData({
  METData? mETData,
  ActiveDurationsData? activeDurationsData,
  CaloriesData? caloriesData,
  DataEnrichment? dataEnrichment,
  DeviceData? deviceData,
  DistanceData? distanceData,
  HeartRateData? heartRateData,
  Metadata? metadata,
  OxygenData? oxygenData,
  Scores? scores,
  StrainData? strainData,
  StressData? stressData,
  TagData? tagData,
  User? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'MET_data': mETData,
      'active_durations_data': activeDurationsData,
      'calories_data': caloriesData,
      'data_enrichment': dataEnrichment,
      'device_data': deviceData,
      'distance_data': distanceData,
      'heart_rate_data': heartRateData,
      'metadata': metadata,
      'oxygen_data': oxygenData,
      'scores': scores,
      'strain_data': strainData,
      'stress_data': stressData,
      'tag_data': tagData,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class TerraRecordDocumentEquality implements Equality<TerraRecord> {
  const TerraRecordDocumentEquality();

  @override
  bool equals(TerraRecord? e1, TerraRecord? e2) {
    return e1?.mETData == e2?.mETData &&
        e1?.activeDurationsData == e2?.activeDurationsData &&
        e1?.caloriesData == e2?.caloriesData &&
        e1?.dataEnrichment == e2?.dataEnrichment &&
        e1?.deviceData == e2?.deviceData &&
        e1?.distanceData == e2?.distanceData &&
        e1?.heartRateData == e2?.heartRateData &&
        e1?.metadata == e2?.metadata &&
        e1?.oxygenData == e2?.oxygenData &&
        e1?.scores == e2?.scores &&
        e1?.strainData == e2?.strainData &&
        e1?.stressData == e2?.stressData &&
        e1?.tagData == e2?.tagData &&
        e1?.user == e2?.user;
  }

  @override
  int hash(TerraRecord? e) => const ListEquality().hash([
        e?.mETData,
        e?.activeDurationsData,
        e?.caloriesData,
        e?.dataEnrichment,
        e?.deviceData,
        e?.distanceData,
        e?.heartRateData,
        e?.metadata,
        e?.oxygenData,
        e?.scores,
        e?.strainData,
        e?.stressData,
        e?.tagData,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is TerraRecord;
}
