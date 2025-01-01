import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsRecord extends FirestoreRecord {
  QuestionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "question_text" field.
  String? _questionText;
  String get questionText => _questionText ?? '';
  bool hasQuestionText() => _questionText != null;

  // "option_1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  bool hasOption1() => _option1 != null;

  // "option_2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  bool hasOption2() => _option2 != null;

  // "option_3" field.
  String? _option3;
  String get option3 => _option3 ?? '';
  bool hasOption3() => _option3 != null;

  // "option_4" field.
  String? _option4;
  String get option4 => _option4 ?? '';
  bool hasOption4() => _option4 != null;

  // "correctOption" field.
  String? _correctOption;
  String get correctOption => _correctOption ?? '';
  bool hasCorrectOption() => _correctOption != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "qID" field.
  int? _qID;
  int get qID => _qID ?? 0;
  bool hasQID() => _qID != null;

  void _initializeFields() {
    _questionText = snapshotData['question_text'] as String?;
    _option1 = snapshotData['option_1'] as String?;
    _option2 = snapshotData['option_2'] as String?;
    _option3 = snapshotData['option_3'] as String?;
    _option4 = snapshotData['option_4'] as String?;
    _correctOption = snapshotData['correctOption'] as String?;
    _points = castToType<int>(snapshotData['points']);
    _qID = castToType<int>(snapshotData['qID']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionsRecord.fromSnapshot(s));

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionsRecord.fromSnapshot(s));

  static QuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionsRecordData({
  String? questionText,
  String? option1,
  String? option2,
  String? option3,
  String? option4,
  String? correctOption,
  int? points,
  int? qID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question_text': questionText,
      'option_1': option1,
      'option_2': option2,
      'option_3': option3,
      'option_4': option4,
      'correctOption': correctOption,
      'points': points,
      'qID': qID,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionsRecordDocumentEquality implements Equality<QuestionsRecord> {
  const QuestionsRecordDocumentEquality();

  @override
  bool equals(QuestionsRecord? e1, QuestionsRecord? e2) {
    return e1?.questionText == e2?.questionText &&
        e1?.option1 == e2?.option1 &&
        e1?.option2 == e2?.option2 &&
        e1?.option3 == e2?.option3 &&
        e1?.option4 == e2?.option4 &&
        e1?.correctOption == e2?.correctOption &&
        e1?.points == e2?.points &&
        e1?.qID == e2?.qID;
  }

  @override
  int hash(QuestionsRecord? e) => const ListEquality().hash([
        e?.questionText,
        e?.option1,
        e?.option2,
        e?.option3,
        e?.option4,
        e?.correctOption,
        e?.points,
        e?.qID
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestionsRecord;
}
