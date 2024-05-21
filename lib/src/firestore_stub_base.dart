import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseFirestoreStubBase implements FirebaseFirestore {
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      throw Exception("not implemented");

  @override
  FirebaseApp get app => throw Exception("not implemented");

  @override
  set app(FirebaseApp a) => throw Exception("not implemented");

  @override
  String get databaseURL => throw Exception("not implemented");

  @override
  set databaseURL(String url) => throw Exception("not implemented");

  @override
  CollectionReference<Map<String, dynamic>> collection(String collectionPath) =>
      throw Exception("not implemented");
  @override
  WriteBatch batch() => throw Exception("not implemented");

  @override
  Future<void> clearPersistence() => throw Exception("not implemented");

  @override
  Future<void> enablePersistence([
    PersistenceSettings? persistenceSettings,
  ]) async =>
      throw Exception("not implemented");

  @override
  LoadBundleTask loadBundle(Uint8List bundle) =>
      throw Exception("not implemented");

  @override
  void useFirestoreEmulator(
    String host,
    int port, {
    bool sslEnabled = false,
    bool automaticHostMapping = true,
  }) =>
      throw Exception("not implemented");

  @override
  Future<QuerySnapshot<T>> namedQueryWithConverterGet<T>(
    String name, {
    GetOptions options = const GetOptions(),
    required FromFirestore<T> fromFirestore,
    required ToFirestore<T> toFirestore,
  }) async =>
      throw Exception("not implemented");

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> namedQueryGet(
    String name, {
    GetOptions options = const GetOptions(),
  }) async =>
      throw Exception("not implemented");

  @override
  Query<Map<String, dynamic>> collectionGroup(String collectionPath) =>
      throw Exception("not implemented");

  @override
  Future<void> disableNetwork() {
    throw Exception("not implemented");
  }

  @override
  DocumentReference<Map<String, dynamic>> doc(String documentPath) =>
      throw Exception("not implemented");

  @override
  Future<void> enableNetwork() => throw Exception("not implemented");

  @override
  Stream<void> snapshotsInSync() => throw Exception("not implemented");

  @override
  Future<T> runTransaction<T>(
    TransactionHandler<T> transactionHandler, {
    Duration timeout = const Duration(seconds: 30),
    int maxAttempts = 5,
  }) async =>
      throw Exception("not implemented");

  @override
  set settings(Settings settings) => throw Exception("not implemented");

  @override
  Settings get settings => throw Exception("not implemented");

  @override
  Future<void> terminate() => throw Exception("not implemented");

  @override
  Future<void> waitForPendingWrites() => throw Exception("not implemented");

  @override
  Future<void> setIndexConfiguration({
    required List<Index> indexes,
    List<FieldOverrides>? fieldOverrides,
  }) async =>
      throw Exception("not implemented");

  @override
  Future<void> setIndexConfigurationFromJSON(String json) async =>
      throw Exception("not implemented");
}

// 元のクラスが@sealedのためignoreで回避している。
// もし今後、sealedキーワードが使用されてしまうと回避できない。
// その場合は、公式側へモック専用のクラスを作成を要望する必要がある。
//
// ignore:subtype_of_sealed_class
class DocumentReferenceStubBase<T> implements DocumentReference<T> {
  @override
  String get id => throw Exception("not implemented");

  @override
  CollectionReference<T> get parent => throw Exception("not implemented");

  @override
  String get path => throw Exception("not implemented");

  @override
  CollectionReference<Map<String, dynamic>> collection(String collectionPath) =>
      throw Exception("not implemented");

  @override
  Future<void> delete() => throw Exception("not implemented");

  @override
  Future<void> update(Map<Object, Object?> data) async =>
      throw Exception("not implemented");

  @override
  Future<DocumentSnapshot<T>> get([GetOptions? options]) =>
      throw Exception("not implemented");

  @override
  Stream<DocumentSnapshot<T>> snapshots(
          {bool includeMetadataChanges = false}) =>
      throw Exception("not implemented");

  @override
  Future<void> set(T data, [SetOptions? options]) =>
      throw Exception("not implemented");

  @override
  DocumentReference<R> withConverter<R>({
    required FromFirestore<R> fromFirestore,
    required ToFirestore<R> toFirestore,
  }) =>
      throw Exception("not implemented");

  @override
  FirebaseFirestore get firestore => throw Exception("not implemented");
}

// ignore:subtype_of_sealed_class
class CollectionReferenceStubBase<T>
    //with QueryStub<T>
    implements
        CollectionReference<T> {
  @override
  String get id => throw Exception("not implemented");

  @override
  DocumentReference<Map<String, dynamic>>? get parent =>
      throw Exception("not implemented");

  @override
  String get path => throw Exception("not implemented");

  @override
  Future<DocumentReference<T>> add(T data) async {
    throw Exception("not implemented");
  }

  @override
  DocumentReference<T> doc([String? path]) =>
      throw Exception("not implemented");

  @override
  CollectionReference<R> withConverter<R>({
    required FromFirestore<R> fromFirestore,
    required ToFirestore<R> toFirestore,
  }) =>
      throw Exception("not implemented");

  @override
  FirebaseFirestore get firestore => throw Exception("not implemented");

  @override
  Map<String, dynamic> get parameters => throw Exception("not implemented");

  @override
  Query<T> endAtDocument(
    DocumentSnapshot documentSnapshot,
  ) =>
      throw Exception("not implemented");

  @override
  Query<T> endAt(Iterable<Object?> values) =>
      throw Exception("not implemented");

  @override
  Query<T> endBeforeDocument(
    DocumentSnapshot documentSnapshot,
  ) =>
      throw Exception("not implemented");

  @override
  Query<T> endBefore(Iterable<Object?> values) =>
      throw Exception("not implemented");

  @override
  Future<QuerySnapshot<T>> get([GetOptions? options]) =>
      throw Exception("not implemented");

  @override
  Query<T> limit(int limit) => throw Exception("not implemented");

  @override
  Query<T> limitToLast(int limit) => throw Exception("not implemented");

  @override
  Stream<QuerySnapshot<T>> snapshots({bool includeMetadataChanges = false}) =>
      throw Exception("not implemented");

  @override
  Query<T> orderBy(Object field, {bool descending = false}) =>
      throw Exception("not implemented");

  @override
  Query<T> startAfterDocument(
    DocumentSnapshot documentSnapshot,
  ) =>
      throw Exception("not implemented");

  @override
  Query<T> startAfter(Iterable<Object?> values) =>
      throw Exception("not implemented");

  @override
  Query<T> startAtDocument(
    DocumentSnapshot documentSnapshot,
  ) =>
      throw Exception("not implemented");

  @override
  Query<T> startAt(Iterable<Object?> values) =>
      throw Exception("not implemented");

  @override
  Query<T> where(
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
  }) =>
      throw Exception("not implemented");

  @override
  AggregateQuery count() => throw Exception("not implemented");

  @override
  AggregateQuery aggregate(
    AggregateField aggregateField1, [
    AggregateField? aggregateField2,
    AggregateField? aggregateField3,
    AggregateField? aggregateField4,
    AggregateField? aggregateField5,
    AggregateField? aggregateField6,
    AggregateField? aggregateField7,
    AggregateField? aggregateField8,
    AggregateField? aggregateField9,
    AggregateField? aggregateField10,
    AggregateField? aggregateField11,
    AggregateField? aggregateField12,
    AggregateField? aggregateField13,
    AggregateField? aggregateField14,
    AggregateField? aggregateField15,
    AggregateField? aggregateField16,
    AggregateField? aggregateField17,
    AggregateField? aggregateField18,
    AggregateField? aggregateField19,
    AggregateField? aggregateField20,
    AggregateField? aggregateField21,
    AggregateField? aggregateField22,
    AggregateField? aggregateField23,
    AggregateField? aggregateField24,
    AggregateField? aggregateField25,
    AggregateField? aggregateField26,
    AggregateField? aggregateField27,
    AggregateField? aggregateField28,
    AggregateField? aggregateField29,
    AggregateField? aggregateField30,
  ]) =>
      throw Exception("not implemented");
}

// ignore:subtype_of_sealed_class
class DocumentSnapshotStubBase<T> implements DocumentSnapshot<T> {
  @override
  String get id => throw Exception("not implemented");

  @override
  DocumentReference<T> get reference => throw Exception("not implemented");

  @override
  SnapshotMetadata get metadata => throw Exception("not implemented");

  @override
  bool get exists => throw Exception("not implemented");

  @override
  T? data() => throw Exception("not implemented");

  @override
  dynamic get(Object field) => throw Exception("not implemented");

  @override
  dynamic operator [](Object field) => throw Exception("not implemented");
}

class QuerySnapshotStubBase<T> implements QuerySnapshot<T> {
  @override
  List<QueryDocumentSnapshot<T>> get docs => throw Exception("not implemented");

  @override
  List<DocumentChange<T>> get docChanges => throw Exception("not implemented");

  @override
  SnapshotMetadata get metadata => throw Exception("not implemented");

  @override
  int get size => throw Exception("not implemented");
}

// ignore:subtype_of_sealed_class
class QueryDocumentSnapshotStubBase<T> implements QueryDocumentSnapshot<T> {
  @override
  T data() => throw Exception("not implemented");

  @override
  String get id => throw Exception("not implemented");

  @override
  DocumentReference<T> get reference => throw Exception("not implemented");

  @override
  SnapshotMetadata get metadata => throw Exception("not implemented");

  @override
  bool get exists => throw Exception("not implemented");

  @override
  dynamic get(Object field) => throw Exception("not implemented");

  @override
  dynamic operator [](Object field) => throw Exception("not implemented");
}

// ignore:subtype_of_sealed_class
class DocumentChangeStubBase<T> implements DocumentChange<T> {
  @override
  DocumentChangeType get type => throw Exception("not implemented");

  @override
  int get oldIndex => throw Exception("not implemented");

  @override
  int get newIndex => throw Exception("not implemented");

  @override
  DocumentSnapshot<T> get doc => throw Exception("not implemented");
}
