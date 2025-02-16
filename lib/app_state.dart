import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// output from LLM for insights box
  String _insightsDuringMission =
      'This is the output from the LLM for what insights we have during the mission. (eg. Heart Rate for Tony is unusually high, decrease activity intensity to prevent overexhaustion).';
  String get insightsDuringMission => _insightsDuringMission;
  set insightsDuringMission(String value) {
    _insightsDuringMission = value;
  }

  int _userOneHR = 170;
  int get userOneHR => _userOneHR;
  set userOneHR(int value) {
    _userOneHR = value;
  }

  int _userTwoHR = 150;
  int get userTwoHR => _userTwoHR;
  set userTwoHR(int value) {
    _userTwoHR = value;
  }

  /// currently a string, to change to a list
  String _soldierData = '';
  String get soldierData => _soldierData;
  set soldierData(String value) {
    _soldierData = value;
  }

  /// team insights on `beforeMission` page
  String _teamInsights = '';
  String get teamInsights => _teamInsights;
  set teamInsights(String value) {
    _teamInsights = value;
  }

  List<int> _hrList = [100, 110, 120, 100, 120];
  List<int> get hrList => _hrList;
  set hrList(List<int> value) {
    _hrList = value;
  }

  void addToHrList(int value) {
    hrList.add(value);
  }

  void removeFromHrList(int value) {
    hrList.remove(value);
  }

  void removeAtIndexFromHrList(int index) {
    hrList.removeAt(index);
  }

  void updateHrListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    hrList[index] = updateFn(_hrList[index]);
  }

  void insertAtIndexInHrList(int index, int value) {
    hrList.insert(index, value);
  }

  List<int> _timeRange = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> get timeRange => _timeRange;
  set timeRange(List<int> value) {
    _timeRange = value;
  }

  void addToTimeRange(int value) {
    timeRange.add(value);
  }

  void removeFromTimeRange(int value) {
    timeRange.remove(value);
  }

  void removeAtIndexFromTimeRange(int index) {
    timeRange.removeAt(index);
  }

  void updateTimeRangeAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    timeRange[index] = updateFn(_timeRange[index]);
  }

  void insertAtIndexInTimeRange(int index, int value) {
    timeRange.insert(index, value);
  }

  List<int> _hrOverTime = [100, 127, 140, 135, 139, 145, 152, 157, 164, 172];
  List<int> get hrOverTime => _hrOverTime;
  set hrOverTime(List<int> value) {
    _hrOverTime = value;
  }

  void addToHrOverTime(int value) {
    hrOverTime.add(value);
  }

  void removeFromHrOverTime(int value) {
    hrOverTime.remove(value);
  }

  void removeAtIndexFromHrOverTime(int index) {
    hrOverTime.removeAt(index);
  }

  void updateHrOverTimeAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    hrOverTime[index] = updateFn(_hrOverTime[index]);
  }

  void insertAtIndexInHrOverTime(int index, int value) {
    hrOverTime.insert(index, value);
  }

  List<int> _sleepScores = [64, 80, 72, 86, 54];
  List<int> get sleepScores => _sleepScores;
  set sleepScores(List<int> value) {
    _sleepScores = value;
  }

  void addToSleepScores(int value) {
    sleepScores.add(value);
  }

  void removeFromSleepScores(int value) {
    sleepScores.remove(value);
  }

  void removeAtIndexFromSleepScores(int index) {
    sleepScores.removeAt(index);
  }

  void updateSleepScoresAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    sleepScores[index] = updateFn(_sleepScores[index]);
  }

  void insertAtIndexInSleepScores(int index, int value) {
    sleepScores.insert(index, value);
  }

  List<int> _stressScores = [80, 43, 64, 45, 88];
  List<int> get stressScores => _stressScores;
  set stressScores(List<int> value) {
    _stressScores = value;
  }

  void addToStressScores(int value) {
    stressScores.add(value);
  }

  void removeFromStressScores(int value) {
    stressScores.remove(value);
  }

  void removeAtIndexFromStressScores(int index) {
    stressScores.removeAt(index);
  }

  void updateStressScoresAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    stressScores[index] = updateFn(_stressScores[index]);
  }

  void insertAtIndexInStressScores(int index, int value) {
    stressScores.insert(index, value);
  }
}
