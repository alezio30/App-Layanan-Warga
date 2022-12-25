import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'data_warga_record.g.dart';

abstract class DataWargaRecord
    implements Built<DataWargaRecord, DataWargaRecordBuilder> {
  static Serializer<DataWargaRecord> get serializer =>
      _$dataWargaRecordSerializer;

  DocumentReference? get dokumenWarga;

  @BuiltValueField(wireName: 'NamaWarga')
  String? get namaWarga;

  @BuiltValueField(wireName: 'NIK')
  String? get nik;

  @BuiltValueField(wireName: 'NoKK')
  int? get noKK;

  @BuiltValueField(wireName: 'TanggalLahir')
  String? get tanggalLahir;

  @BuiltValueField(wireName: 'TempatLahir')
  String? get tempatLahir;

  @BuiltValueField(wireName: 'StatusNikah')
  String? get statusNikah;

  @BuiltValueField(wireName: 'Agama')
  String? get agama;

  @BuiltValueField(wireName: 'KKfoto')
  String? get kKfoto;

  @BuiltValueField(wireName: 'KTPScan')
  String? get kTPScan;

  @BuiltValueField(wireName: 'Alamat')
  String? get alamat;

  String? get foto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DataWargaRecordBuilder builder) => builder
    ..namaWarga = ''
    ..nik = ''
    ..noKK = 0
    ..tanggalLahir = ''
    ..tempatLahir = ''
    ..statusNikah = ''
    ..agama = ''
    ..kKfoto = ''
    ..kTPScan = ''
    ..alamat = ''
    ..foto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DataWarga');

  static Stream<DataWargaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DataWargaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DataWargaRecord._();
  factory DataWargaRecord([void Function(DataWargaRecordBuilder) updates]) =
      _$DataWargaRecord;

  static DataWargaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDataWargaRecordData({
  DocumentReference? dokumenWarga,
  String? namaWarga,
  String? nik,
  int? noKK,
  String? tanggalLahir,
  String? tempatLahir,
  String? statusNikah,
  String? agama,
  String? kKfoto,
  String? kTPScan,
  String? alamat,
  String? foto,
}) {
  final firestoreData = serializers.toFirestore(
    DataWargaRecord.serializer,
    DataWargaRecord(
      (d) => d
        ..dokumenWarga = dokumenWarga
        ..namaWarga = namaWarga
        ..nik = nik
        ..noKK = noKK
        ..tanggalLahir = tanggalLahir
        ..tempatLahir = tempatLahir
        ..statusNikah = statusNikah
        ..agama = agama
        ..kKfoto = kKfoto
        ..kTPScan = kTPScan
        ..alamat = alamat
        ..foto = foto,
    ),
  );

  return firestoreData;
}
