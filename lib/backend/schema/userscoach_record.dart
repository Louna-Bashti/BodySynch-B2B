import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserscoachRecord extends FirestoreRecord {
  UserscoachRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "dateNaiss" field.
  String? _dateNaiss;
  String get dateNaiss => _dateNaiss ?? '';
  bool hasDateNaiss() => _dateNaiss != null;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "prenom" field.
  String? _prenom;
  String get prenom => _prenom ?? '';
  bool hasPrenom() => _prenom != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "sexe" field.
  String? _sexe;
  String get sexe => _sexe ?? '';
  bool hasSexe() => _sexe != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "sommeil" field.
  double? _sommeil;
  double get sommeil => _sommeil ?? 0.0;
  bool hasSommeil() => _sommeil != null;

  // "taille" field.
  double? _taille;
  double get taille => _taille ?? 0.0;
  bool hasTaille() => _taille != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _dateNaiss = snapshotData['dateNaiss'] as String?;
    _nom = snapshotData['nom'] as String?;
    _password = snapshotData['password'] as String?;
    _prenom = snapshotData['prenom'] as String?;
    _role = snapshotData['role'] as String?;
    _sexe = snapshotData['sexe'] as String?;
    _userName = snapshotData['userName'] as String?;
    _sommeil = castToType<double>(snapshotData['sommeil']);
    _taille = castToType<double>(snapshotData['taille']);
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userscoach');

  static Stream<UserscoachRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserscoachRecord.fromSnapshot(s));

  static Future<UserscoachRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserscoachRecord.fromSnapshot(s));

  static UserscoachRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserscoachRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserscoachRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserscoachRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserscoachRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserscoachRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserscoachRecordData({
  String? email,
  String? dateNaiss,
  String? nom,
  String? password,
  String? prenom,
  String? role,
  String? sexe,
  String? userName,
  double? sommeil,
  double? taille,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'dateNaiss': dateNaiss,
      'nom': nom,
      'password': password,
      'prenom': prenom,
      'role': role,
      'sexe': sexe,
      'userName': userName,
      'sommeil': sommeil,
      'taille': taille,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserscoachRecordDocumentEquality implements Equality<UserscoachRecord> {
  const UserscoachRecordDocumentEquality();

  @override
  bool equals(UserscoachRecord? e1, UserscoachRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.dateNaiss == e2?.dateNaiss &&
        e1?.nom == e2?.nom &&
        e1?.password == e2?.password &&
        e1?.prenom == e2?.prenom &&
        e1?.role == e2?.role &&
        e1?.sexe == e2?.sexe &&
        e1?.userName == e2?.userName &&
        e1?.sommeil == e2?.sommeil &&
        e1?.taille == e2?.taille &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.title == e2?.title;
  }

  @override
  int hash(UserscoachRecord? e) => const ListEquality().hash([
        e?.email,
        e?.dateNaiss,
        e?.nom,
        e?.password,
        e?.prenom,
        e?.role,
        e?.sexe,
        e?.userName,
        e?.sommeil,
        e?.taille,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is UserscoachRecord;
}
