import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

extension TimestampExtensions on Timestamp {
  String get hM => DateFormat('HH:mm').format(toDate());
}