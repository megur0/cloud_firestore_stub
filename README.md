# This is a private package

# このパッケージの目的
* Firestoreに関わるテストをする際に汎用的に利用可能なスタブを定義したパッケージ

# スタブのベースとなるクラス
* 以下のクラスを定義。すべての実装はException("not implemented")としている。
* 元クラスのコンストラクタがプライベートになっているためextendsはできないためこれらのクラスを用意した。
* FirebaseFirestoreStubBase
    * FirebaseFirestoreを実装
* DocumentReferenceStubBase
    * DocumentReferenceを実装
* CollectionReferenceStubBase
    * CollectionReferenceを実装
* DocumentSnapshotStubBase
    * DocumentSnapshotを実装
* QuerySnapshotStubBase
    * QuerySnapshotを実装
* QueryDocumentSnapshotStubBase
    * QueryDocumentSnapshotを実装
* DocumentChangeStubBase
    * DocumentChangeを実装


# Firestoreのスタブ
* snapshot, getメソッドの戻り値をスタブ化する。
    * 以下のスタブ関数を設定できる。
    * FirebaseFirestoreStub.getDocumentStub
    * FirebaseFirestoreStub.getQueryStub
    * FirebaseFirestoreStub.getDocumentSnapshotStub
    * FirebaseFirestoreStub.getQuerySnapshotStub
    * これらがnullではない場合、ollectionReferenceStubやDocumentReferenceStubのsnapshot, getは
    * nullの場合はデータが空のオブジェクトを返す
* 実体となるデータは何も生成されない
    * setや、deleteなどのメソッドは何もしない。
* パスとドキュメントID、コレクションID
    * CollectionReferenceStubやDocumentReferenceStubのpath, idで参照できる。
    * CollectionReferenceStub.dummyAutoId()を設定することでドキュメントIDの自動生成Iを行うメソッドを指定できる。
        * CollectionReferenceStub.docで、pathが指定されない場合にデフォルトで利用される。
