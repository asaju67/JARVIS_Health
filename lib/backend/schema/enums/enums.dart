import 'package:collection/collection.dart';

enum METData {
  MET_samples,
  avg_level,
  num_high_intensity_minutes,
  num_inactive_minutes,
  num_low_intensity_minutes,
  num_moderate_intensity_minutes,
}

enum ActiveDurationsData {
  activity_levels_samples,
  activity_seconds,
  inactivity_seconds,
  low_intensity_seconds,
  moderate_intensity_seconds,
  num_continuous_inactive_periods,
  rest_seconds,
  standing_hours_count,
  standing_seconds,
  vigorous_intensity_seconds,
}

enum CaloriesData {
  BMR_calories,
  calorie_samples,
  net_activity_calories,
  net_intake_calories,
  total_burned_calories,
}

enum DataEnrichment {
  cardiovascular_contributors,
  cardiovascular_score,
  immune_contributors,
  immune_index,
  readiness_contributors,
  readiness_score,
  respitratory_score,
  start_time,
  stress_contributors,
  total_stress_score,
}

enum DeviceData {
  activation_timestamp,
  data_provided,
  hardware_version,
  last_upload_date,
  manufacturer,
  name,
  other_devices,
  serial_number,
  software_version,
}

enum DistanceData {
  detailed,
  distance_meters,
  elevation,
  floors_climbed,
  steps,
  swimming,
}

enum Detailed {
  distance_samples,
  elevation_samples,
  floors_climbed_samples,
  step_samples,
  hr_samples,
  hrv_samples_rmssd,
  hrv_samples_sdnn,
}

enum DistanceSamples {
  distance_meters,
  timer_duration_seconds,
  timestamp,
}

enum StepSamples {
  steps,
  timer_duration_seconds,
  timestamp,
}

enum Elevation {
  avg_meters,
  gain_actual_meters,
  gain_planned_meters,
  loss_actual_meters,
  max_meters,
  min_meters,
}

enum Swimming {
  num_laps,
  num_strokes,
  pool_length_meters,
}

enum HeartRateData {
  detailed,
  summary,
}

enum HrSamples {
  bpm,
  context,
  timer_duration_seconds,
  timestamp,
}

enum Summary {
  avg_hr_bpm,
  avg_hrv_rmssd,
  avg_hrv_sdnn,
  hr_zone_data,
  max_hr_bpm,
  min_hr_bpm,
  resting_hr_bpm,
  user_max_hr_bpm,
}

enum Metadata {
  end_time,
  start_time,
  timestamp_localization,
  upload_type,
}

enum OxygenData {
  avg_saturation_percentage,
  saturation_samples,
  vo2_samples,
  vo2max_ml_per_min_per_kg,
}

enum SaturationSamples {
  percentage,
  timestamp,
  type,
}

enum Scores {
  activity,
  recovery,
  sleep,
}

enum StrainData {
  strain_level,
}

enum StressData {
  activity_stress_duration_seconds,
  avg_stress_level,
  body_battery_samples,
  high_stress_duration_seconds,
  low_stress_duration_seconds,
  max_stress_level,
  medium_stress_duration_seconds,
  rest_stress_duration_seconds,
  samples,
  stress_duration_seconds,
  stress_rating,
}

enum BodyBatterySamples {
  level,
  timestamp,
}

enum Samples {
  level,
  timestamp,
}

enum TagData {
  tags,
}

enum User {
  active,
  created_at,
  last_webhook_update,
  provider,
  reference_id,
  scopes,
  user_id,
}

enum HrvSamplesRmssd {
  rmssd,
}

enum HrvSamplesSdnn {
  sdnn,
}

enum HrZoneData {
  zone,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (METData):
      return METData.values.deserialize(value) as T?;
    case (ActiveDurationsData):
      return ActiveDurationsData.values.deserialize(value) as T?;
    case (CaloriesData):
      return CaloriesData.values.deserialize(value) as T?;
    case (DataEnrichment):
      return DataEnrichment.values.deserialize(value) as T?;
    case (DeviceData):
      return DeviceData.values.deserialize(value) as T?;
    case (DistanceData):
      return DistanceData.values.deserialize(value) as T?;
    case (Detailed):
      return Detailed.values.deserialize(value) as T?;
    case (DistanceSamples):
      return DistanceSamples.values.deserialize(value) as T?;
    case (StepSamples):
      return StepSamples.values.deserialize(value) as T?;
    case (Elevation):
      return Elevation.values.deserialize(value) as T?;
    case (Swimming):
      return Swimming.values.deserialize(value) as T?;
    case (HeartRateData):
      return HeartRateData.values.deserialize(value) as T?;
    case (HrSamples):
      return HrSamples.values.deserialize(value) as T?;
    case (Summary):
      return Summary.values.deserialize(value) as T?;
    case (Metadata):
      return Metadata.values.deserialize(value) as T?;
    case (OxygenData):
      return OxygenData.values.deserialize(value) as T?;
    case (SaturationSamples):
      return SaturationSamples.values.deserialize(value) as T?;
    case (Scores):
      return Scores.values.deserialize(value) as T?;
    case (StrainData):
      return StrainData.values.deserialize(value) as T?;
    case (StressData):
      return StressData.values.deserialize(value) as T?;
    case (BodyBatterySamples):
      return BodyBatterySamples.values.deserialize(value) as T?;
    case (Samples):
      return Samples.values.deserialize(value) as T?;
    case (TagData):
      return TagData.values.deserialize(value) as T?;
    case (User):
      return User.values.deserialize(value) as T?;
    case (HrvSamplesRmssd):
      return HrvSamplesRmssd.values.deserialize(value) as T?;
    case (HrvSamplesSdnn):
      return HrvSamplesSdnn.values.deserialize(value) as T?;
    case (HrZoneData):
      return HrZoneData.values.deserialize(value) as T?;
    default:
      return null;
  }
}
