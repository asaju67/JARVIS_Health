import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'during_mission_widget.dart' show DuringMissionWidget;
import 'package:flutter/material.dart';

class DuringMissionModel extends FlutterFlowModel<DuringMissionWidget> {
  ///  Local state fields for this page.

  int? bpm;

  String? hrData;

  List<int> rest = [60, 61, 63, 68, 64, 70, 72, 70, 65, 66];
  void addToRest(int item) => rest.add(item);
  void removeFromRest(int item) => rest.remove(item);
  void removeAtIndexFromRest(int index) => rest.removeAt(index);
  void insertAtIndexInRest(int index, int item) => rest.insert(index, item);
  void updateRestAtIndex(int index, Function(int) updateFn) =>
      rest[index] = updateFn(rest[index]);

  int? bpmChange;

  double? bpmNorm;

  int? bpm2;

  double? bpmNorm2;

  int? bpm3;

  double? bpmNorm3;

  int? bpm4;

  double? bpmNorm4;

  int? bpm5;

  double? bpmNorm5;

  int? bpmDiff;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (missionInsights)] action in IconButton widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
