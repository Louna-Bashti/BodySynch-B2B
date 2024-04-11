import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TauxGlycemieRecord extends FirestoreRecord {
  TauxGlycemieRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idusers" field.
  String? _idusers;
  String get idusers => _idusers ?? '';
  bool hasIdusers() => _idusers != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  // "valeur" field.
  double? _valeur;
  double get valeur => _valeur ?? 0.0;
  bool hasValeur() => _valeur != null;

  // "blood_glucose_mg_per_dL" field.
  double? _bloodGlucoseMgPerDL;
  double get bloodGlucoseMgPerDL => _bloodGlucoseMgPerDL ?? 0.0;
  bool hasBloodGlucoseMgPerDL() => _bloodGlucoseMgPerDL != null;

  // "glucose_level_flag" field.
  double? _glucoseLevelFlag;
  double get glucoseLevelFlag => _glucoseLevelFlag ?? 0.0;
  bool hasGlucoseLevelFlag() => _glucoseLevelFlag != null;

  // "trend_arrow" field.
  double? _trendArrow;
  double get trendArrow => _trendArrow ?? 0.0;
  bool hasTrendArrow() => _trendArrow != null;

  void _initializeFields() {
    _idusers = snapshotData['idusers'] as String?;
    _timestamp = snapshotData['timestamp'] as String?;
    _valeur = castToType<double>(snapshotData['valeur']);
    _bloodGlucoseMgPerDL =
        castToType<double>(snapshotData['blood_glucose_mg_per_dL']);
    _glucoseLevelFlag = castToType<double>(snapshotData['glucose_level_flag']);
    _trendArrow = castToType<double>(snapshotData['trend_arrow']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TauxGlycemie');

  static Stream<TauxGlycemieRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TauxGlycemieRecord.fromSnapshot(s));

  static Future<TauxGlycemieRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TauxGlycemieRecord.fromSnapshot(s));

  static TauxGlycemieRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TauxGlycemieRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TauxGlycemieRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TauxGlycemieRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TauxGlycemieRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TauxGlycemieRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTauxGlycemieRecordData({
  String? idusers,
  String? timestamp,
  double? valeur,
  double? bloodGlucoseMgPerDL,
  double? glucoseLevelFlag,
  double? trendArrow,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idusers': idusers,
      'timestamp': timestamp,
      'valeur': valeur,
      'blood_glucose_mg_per_dL': bloodGlucoseMgPerDL,
      'glucose_level_flag': glucoseLevelFlag,
      'trend_arrow': trendArrow,
    }.withoutNulls,
  );

  return firestoreData;
}

class TauxGlycemieRecordDocumentEquality
    implements Equality<TauxGlycemieRecord> {
  const TauxGlycemieRecordDocumentEquality();

  @override
  bool equals(TauxGlycemieRecord? e1, TauxGlycemieRecord? e2) {
    return e1?.idusers == e2?.idusers &&
        e1?.timestamp == e2?.timestamp &&
        e1?.valeur == e2?.valeur &&
        e1?.bloodGlucoseMgPerDL == e2?.bloodGlucoseMgPerDL &&
        e1?.glucoseLevelFlag == e2?.glucoseLevelFlag &&
        e1?.trendArrow == e2?.trendArrow;
  }

  @override
  int hash(TauxGlycemieRecord? e) => const ListEquality().hash([
        e?.idusers,
        e?.timestamp,
        e?.valeur,
        e?.bloodGlucoseMgPerDL,
        e?.glucoseLevelFlag,
        e?.trendArrow
      ]);

  @override
  bool isValidKey(Object? o) => o is TauxGlycemieRecord;
}
