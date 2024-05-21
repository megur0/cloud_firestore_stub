import 'package:cloud_firestore/cloud_firestore.dart';

import './firestore_stub_base.dart';

class FirebaseFirestoreStub extends FirebaseFirestoreStubBase {
  FirebaseFirestoreStub();

  static Future<DocumentSnapshot<Map<String, dynamic>>> Function(
      DocumentReferenceStub documentReferenceStub)? getDocumentStub;
  static Future<QuerySnapshot<Map<String, dynamic>>> Function(
      CollectionReferenceStub collectionReferenceStub)? getQueryStub;
  static Stream<DocumentSnapshot<Map<String, dynamic>>> Function(
      DocumentReferenceStub documentReferenceStub)? getDocumentSnapshotStub;
  static Stream<QuerySnapshot<Map<String, dynamic>>> Function(
      CollectionReferenceStub collectionReferenceStub)? getQuerySnapshotStub;

  @override
  CollectionReference<Map<String, dynamic>> collection(String collectionPath) {
    final s = collectionPath.split("/");
    final collectionid = s.last;
    s.removeLast();
    return CollectionReferenceStub._fromReference(
      collectionid,
      s.join("/"),
    );
  }
}

// ignore:subtype_of_sealed_class
class DocumentReferenceStub
    extends DocumentReferenceStubBase<Map<String, dynamic>> {
  DocumentReferenceStub(
    this.parent,
    this._pathWithoutId,
    this.id,
  );

  final String _pathWithoutId;

  @override
  final String id;

  @override
  final CollectionReference<Map<String, dynamic>> parent;

  @override
  String get path => "$_pathWithoutId/$id";

  @override
  CollectionReference<Map<String, dynamic>> collection(String collectionPath) {
    final s = collectionPath.split("/");
    final collectionId = s.last;
    String collectionBasePath = path;
    if (s.length > 1) {
      s.removeLast();
      collectionBasePath = "$path/${s.join("/")}";
    }

    return CollectionReferenceStub._fromReference(
      collectionId,
      collectionBasePath,
    );
  }

  @override
  Future<void> delete() async {}

  @override
  Future<DocumentSnapshot<Map<String, dynamic>>> get(
      [GetOptions? options]) async {
    if (FirebaseFirestoreStub.getDocumentStub != null) {
      return FirebaseFirestoreStub.getDocumentStub!(this);
    }
    return DocumentSnapshotStub(id, null);
  }

  @override
  Stream<DocumentSnapshot<Map<String, dynamic>>> snapshots(
      {bool includeMetadataChanges = false}) {
    if (FirebaseFirestoreStub.getDocumentSnapshotStub != null) {
      return FirebaseFirestoreStub.getDocumentSnapshotStub!(this);
    }
    return Stream.value(DocumentSnapshotStub(id, null));
  }

  @override
  Future<void> set(Map<String, dynamic> data, [SetOptions? options]) async {}
}

class WhereValues {
  WhereValues(
      this.isEqualTo,
      this.isNotEqualTo,
      this.isLessThan,
      this.isLessThanOrEqualTo,
      this.isGreaterThan,
      this.isGreaterThanOrEqualTo,
      this.arrayContains,
      this.arrayContainsAny,
      this.whereIn,
      this.whereNotIn,
      this.isNull);

  final Object? isEqualTo;
  final Object? isNotEqualTo;
  final Object? isLessThan;
  final Object? isLessThanOrEqualTo;
  final Object? isGreaterThan;
  final Object? isGreaterThanOrEqualTo;
  final Object? arrayContains;
  final Iterable<Object?>? arrayContainsAny;
  final Iterable<Object?>? whereIn;
  final Iterable<Object?>? whereNotIn;
  final bool? isNull;
}

// ignore:subtype_of_sealed_class
class CollectionReferenceStub
    extends CollectionReferenceStubBase<Map<String, dynamic>> {
  CollectionReferenceStub._fromReference(
    this.id,
    this._pathWithoutId,
  )   : startAfterValue = null,
        endBeforeValue = null,
        startAtValue = null,
        endAtValue = null,
        limitValue = null,
        limitToLastValue = null,
        orderByFieldAndDecsendingValues = null,
        whereValues = null;

  CollectionReferenceStub._fromQuery(
    this.id,
    this._pathWithoutId, {
    required this.limitValue,
    required this.limitToLastValue,
    required this.endBeforeValue,
    required this.startAfterValue,
    required this.startAtValue,
    required this.endAtValue,
    required this.orderByFieldAndDecsendingValues,
    required this.whereValues,
  });

  static String Function() dummyAutoId = () => "xxx";

  final int? limitValue;

  final int? limitToLastValue;

  final Iterable<Object?>? endBeforeValue;

  final Iterable<Object?>? startAfterValue;

  final Iterable<Object?>? startAtValue;

  final Iterable<Object?>? endAtValue;

  final Map<Object, bool>? orderByFieldAndDecsendingValues;

  final Map<Object, WhereValues>? whereValues;

  @override
  final String id;

  final String _pathWithoutId;

  @override
  String get path => "$_pathWithoutId/$id";

  @override
  DocumentReference<Map<String, dynamic>> doc([String? path]) {
    return DocumentReferenceStub(
      this,
      this.path,
      path ?? CollectionReferenceStub.dummyAutoId(),
    );
  }

  @override
  Query<Map<String, dynamic>> endAt(Iterable<Object?> values) =>
      _copy(newEndAtValue: values);

  @override
  Query<Map<String, dynamic>> endBefore(Iterable<Object?> values) {
    return _copy(newEndBeforeValue: values);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> get([GetOptions? options]) async {
    if (FirebaseFirestoreStub.getQueryStub != null) {
      return FirebaseFirestoreStub.getQueryStub!(this);
    }
    return QuerySnapshotStub(
      [],
      [],
      [],
    );
  }

  @override
  Query<Map<String, dynamic>> limit(int limit) {
    return _copy(newLimitValue: limit);
  }

  @override
  Query<Map<String, dynamic>> limitToLast(int limit) {
    return _copy(newLimitToLastValue: limit);
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> snapshots(
      {bool includeMetadataChanges = false}) {
    if (FirebaseFirestoreStub.getQuerySnapshotStub != null) {
      return FirebaseFirestoreStub.getQuerySnapshotStub!(this);
    }
    return Stream.value(QuerySnapshotStub(
      [],
      [],
      [],
    ));
  }

  @override
  Query<Map<String, dynamic>> orderBy(Object field, {bool descending = false}) {
    Map<Object, bool> newOrderByFieldAndDecsendingValues =
        orderByFieldAndDecsendingValues ?? {};
    newOrderByFieldAndDecsendingValues[field] = descending;
    return _copy(
        newOrderByFieldAndDecsendingValues: newOrderByFieldAndDecsendingValues);
  }

  @override
  Query<Map<String, dynamic>> startAfter(Iterable<Object?> values) =>
      _copy(newStartAfterValue: values);

  @override
  Query<Map<String, dynamic>> startAt(Iterable<Object?> values) => _copy(
        newStartAtValue: values,
      );

  @override
  Query<Map<String, dynamic>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    Iterable<Object?>? arrayContainsAny,
    Iterable<Object?>? whereIn,
    Iterable<Object?>? whereNotIn,
    bool? isNull,
  }) {
    Map<Object, WhereValues> newWhereValues = whereValues ?? {};
    newWhereValues[field] = WhereValues(
        isEqualTo,
        isNotEqualTo,
        isLessThan,
        isLessThanOrEqualTo,
        isGreaterThan,
        isGreaterThanOrEqualTo,
        arrayContains,
        arrayContainsAny,
        whereIn,
        whereNotIn,
        isNull);
    return _copy(newWhereValues: newWhereValues);
  }

  @override
  Map<String, dynamic> get parameters => {};

  Query<Map<String, dynamic>> _copy({
    int? newLimitValue,
    int? newLimitToLastValue,
    Iterable<Object?>? newEndBeforeValue,
    Iterable<Object?>? newStartAfterValue,
    Iterable<Object?>? newStartAtValue,
    Iterable<Object?>? newEndAtValue,
    int? newLimitLastToValue,
    Map<Object, bool>? newOrderByFieldAndDecsendingValues,
    Map<Object, WhereValues>? newWhereValues,
  }) =>
      CollectionReferenceStub._fromQuery(
        id,
        _pathWithoutId,
        endBeforeValue: newEndBeforeValue ?? endBeforeValue,
        startAfterValue: newStartAfterValue ?? startAfterValue,
        startAtValue: newStartAtValue ?? startAtValue,
        endAtValue: newEndAtValue ?? endAtValue,
        limitValue: newLimitValue ?? limitValue,
        limitToLastValue: newLimitLastToValue ?? limitToLastValue,
        orderByFieldAndDecsendingValues: newOrderByFieldAndDecsendingValues ??
            orderByFieldAndDecsendingValues,
        whereValues: newWhereValues ?? whereValues,
      );
}

// ignore:subtype_of_sealed_class
class DocumentSnapshotStub
    extends DocumentSnapshotStubBase<Map<String, dynamic>> {
  DocumentSnapshotStub(this.id, this._data);

  final Map<String, dynamic>? _data;

  @override
  final String id;

  @override
  Map<String, dynamic>? data() => _data;
}

class QuerySnapshotStub extends QuerySnapshotStubBase<Map<String, dynamic>> {
  QuerySnapshotStub(this._dataIdList, this._dataList, this._changeTypeList)
      : assert(_dataList.length == _dataIdList.length);

  final List<Map<String, dynamic>> _dataList;
  final List<String> _dataIdList;
  final List<DocumentChangeType> _changeTypeList;

  @override
  List<DocumentChange<Map<String, dynamic>>> get docChanges {
    List<DocumentChangeStub> l = [];
    for (int i = 0; i < _dataList.length; i++) {
      l.add(
          DocumentChangeStub(_dataIdList[i], _dataList[i], _changeTypeList[i]));
    }
    return l;
  }

  @override
  List<QueryDocumentSnapshot<Map<String, dynamic>>> get docs {
    List<QueryDocumentSnapshot<Map<String, dynamic>>> l = [];
    for (int i = 0; i < _dataList.length; i++) {
      l.add(QueryDocumentSnapshotStub(_dataIdList[i], _dataList[i]));
    }
    return l;
  }
}

// ignore:subtype_of_sealed_class
class QueryDocumentSnapshotStub
    extends QueryDocumentSnapshotStubBase<Map<String, dynamic>> {
  QueryDocumentSnapshotStub(this.id, this._data);

  final Map<String, dynamic> _data;

  @override
  final String id;

  @override
  Map<String, dynamic> data() => _data;
}

// ignore:subtype_of_sealed_class
class DocumentChangeStub extends DocumentChangeStubBase<Map<String, dynamic>> {
  DocumentChangeStub(this.id, this._data, this.type);

  final String id;
  final Map<String, dynamic> _data;

  @override
  final DocumentChangeType type;

  @override
  DocumentSnapshot<Map<String, dynamic>> get doc =>
      DocumentSnapshotStub(id, _data);
}
