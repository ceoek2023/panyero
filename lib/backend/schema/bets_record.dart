import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BetsRecord extends FirestoreRecord {
  BetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "game_name" field.
  int? _gameName;
  int get gameName => _gameName ?? 0;
  bool hasGameName() => _gameName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _amount = castToType<int>(snapshotData['amount']);
    _gameName = castToType<int>(snapshotData['game_name']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bets');

  static Stream<BetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BetsRecord.fromSnapshot(s));

  static Future<BetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BetsRecord.fromSnapshot(s));

  static BetsRecord fromSnapshot(DocumentSnapshot snapshot) => BetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBetsRecordData({
  String? name,
  String? description,
  String? specifications,
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? amount,
  int? gameName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'amount': amount,
      'game_name': gameName,
    }.withoutNulls,
  );

  return firestoreData;
}

class BetsRecordDocumentEquality implements Equality<BetsRecord> {
  const BetsRecordDocumentEquality();

  @override
  bool equals(BetsRecord? e1, BetsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.amount == e2?.amount &&
        e1?.gameName == e2?.gameName;
  }

  @override
  int hash(BetsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.createdAt,
        e?.modifiedAt,
        e?.amount,
        e?.gameName
      ]);

  @override
  bool isValidKey(Object? o) => o is BetsRecord;
}
