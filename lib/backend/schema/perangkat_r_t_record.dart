import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'perangkat_r_t_record.g.dart';

abstract class PerangkatRTRecord
    implements Built<PerangkatRTRecord, PerangkatRTRecordBuilder> {
  static Serializer<PerangkatRTRecord> get serializer =>
      _$perangkatRTRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'Roles')
  String? get roles;

  @BuiltValueField(wireName: 'UserRef')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'Alamat')
  String? get alamat;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PerangkatRTRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..roles = ''
    ..alamat = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PerangkatRT');

  static Stream<PerangkatRTRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PerangkatRTRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PerangkatRTRecord._();
  factory PerangkatRTRecord([void Function(PerangkatRTRecordBuilder) updates]) =
      _$PerangkatRTRecord;

  static PerangkatRTRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPerangkatRTRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? roles,
  DocumentReference? userRef,
  String? alamat,
}) {
  final firestoreData = serializers.toFirestore(
    PerangkatRTRecord.serializer,
    PerangkatRTRecord(
      (p) => p
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..phoneNumber = phoneNumber
        ..roles = roles
        ..userRef = userRef
        ..alamat = alamat,
    ),
  );

  return firestoreData;
}
