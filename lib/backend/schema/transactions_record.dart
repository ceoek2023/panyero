import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "spentAt" field.
  String? _spentAt;
  String get spentAt => _spentAt ?? '';
  bool hasSpentAt() => _spentAt != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "dateSpent" field.
  DateTime? _dateSpent;
  DateTime? get dateSpent => _dateSpent;
  bool hasDateSpent() => _dateSpent != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "reciever" field.
  DocumentReference? _reciever;
  DocumentReference? get reciever => _reciever;
  bool hasReciever() => _reciever != null;

  // "transaction" field.
  List<DocumentReference>? _transaction;
  List<DocumentReference> get transaction => _transaction ?? const [];
  bool hasTransaction() => _transaction != null;

  // "icon_image" field.
  String? _iconImage;
  String get iconImage => _iconImage ?? '';
  bool hasIconImage() => _iconImage != null;

  // "trxn_type" field.
  int? _trxnType;
  int get trxnType => _trxnType ?? 0;
  bool hasTrxnType() => _trxnType != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _spentAt = snapshotData['spentAt'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _dateSpent = snapshotData['dateSpent'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _reciever = snapshotData['reciever'] as DocumentReference?;
    _transaction = getDataList(snapshotData['transaction']);
    _iconImage = snapshotData['icon_image'] as String?;
    _trxnType = castToType<int>(snapshotData['trxn_type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? name,
  String? spentAt,
  double? amount,
  DateTime? dateSpent,
  String? status,
  DocumentReference? sender,
  DocumentReference? reciever,
  String? iconImage,
  int? trxnType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'spentAt': spentAt,
      'amount': amount,
      'dateSpent': dateSpent,
      'status': status,
      'sender': sender,
      'reciever': reciever,
      'icon_image': iconImage,
      'trxn_type': trxnType,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.spentAt == e2?.spentAt &&
        e1?.amount == e2?.amount &&
        e1?.dateSpent == e2?.dateSpent &&
        e1?.status == e2?.status &&
        e1?.sender == e2?.sender &&
        e1?.reciever == e2?.reciever &&
        listEquality.equals(e1?.transaction, e2?.transaction) &&
        e1?.iconImage == e2?.iconImage &&
        e1?.trxnType == e2?.trxnType;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.spentAt,
        e?.amount,
        e?.dateSpent,
        e?.status,
        e?.sender,
        e?.reciever,
        e?.transaction,
        e?.iconImage,
        e?.trxnType
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
