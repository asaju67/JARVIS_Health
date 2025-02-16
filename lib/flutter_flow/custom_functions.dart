import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

int cycle(List<int> sample) {
  // I want to create a function that continuously outputs a stream of data that is indexed in order from the sample integer arraay.
  int index = 0;

  Stream<int> stream = Stream<int>.periodic(Duration(seconds: 1), (int _) {
    if (index < sample.length) {
      return sample[index++];
    } else {
      index = 0;
      return sample[index++];
    }
  });

  stream.listen((int data) {
    print(data);
  });

  return 0;

  // return 0;
}
