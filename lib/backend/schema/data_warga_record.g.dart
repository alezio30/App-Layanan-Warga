// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_warga_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataWargaRecord> _$dataWargaRecordSerializer =
    new _$DataWargaRecordSerializer();

class _$DataWargaRecordSerializer
    implements StructuredSerializer<DataWargaRecord> {
  @override
  final Iterable<Type> types = const [DataWargaRecord, _$DataWargaRecord];
  @override
  final String wireName = 'DataWargaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataWargaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dokumenWarga;
    if (value != null) {
      result
        ..add('dokumenWarga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.namaWarga;
    if (value != null) {
      result
        ..add('NamaWarga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nik;
    if (value != null) {
      result
        ..add('NIK')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.noKK;
    if (value != null) {
      result
        ..add('NoKK')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tanggalLahir;
    if (value != null) {
      result
        ..add('TanggalLahir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempatLahir;
    if (value != null) {
      result
        ..add('TempatLahir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusNikah;
    if (value != null) {
      result
        ..add('StatusNikah')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.agama;
    if (value != null) {
      result
        ..add('Agama')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.kKfoto;
    if (value != null) {
      result
        ..add('KKfoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.kTPScan;
    if (value != null) {
      result
        ..add('KTPScan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alamat;
    if (value != null) {
      result
        ..add('Alamat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DataWargaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataWargaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dokumenWarga':
          result.dokumenWarga = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'NamaWarga':
          result.namaWarga = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NIK':
          result.nik = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NoKK':
          result.noKK = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'TanggalLahir':
          result.tanggalLahir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TempatLahir':
          result.tempatLahir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'StatusNikah':
          result.statusNikah = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Agama':
          result.agama = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'KKfoto':
          result.kKfoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'KTPScan':
          result.kTPScan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Alamat':
          result.alamat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DataWargaRecord extends DataWargaRecord {
  @override
  final DocumentReference<Object?>? dokumenWarga;
  @override
  final String? namaWarga;
  @override
  final String? nik;
  @override
  final int? noKK;
  @override
  final String? tanggalLahir;
  @override
  final String? tempatLahir;
  @override
  final String? statusNikah;
  @override
  final String? agama;
  @override
  final String? kKfoto;
  @override
  final String? kTPScan;
  @override
  final String? alamat;
  @override
  final String? foto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DataWargaRecord([void Function(DataWargaRecordBuilder)? updates]) =>
      (new DataWargaRecordBuilder()..update(updates))._build();

  _$DataWargaRecord._(
      {this.dokumenWarga,
      this.namaWarga,
      this.nik,
      this.noKK,
      this.tanggalLahir,
      this.tempatLahir,
      this.statusNikah,
      this.agama,
      this.kKfoto,
      this.kTPScan,
      this.alamat,
      this.foto,
      this.ffRef})
      : super._();

  @override
  DataWargaRecord rebuild(void Function(DataWargaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataWargaRecordBuilder toBuilder() =>
      new DataWargaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataWargaRecord &&
        dokumenWarga == other.dokumenWarga &&
        namaWarga == other.namaWarga &&
        nik == other.nik &&
        noKK == other.noKK &&
        tanggalLahir == other.tanggalLahir &&
        tempatLahir == other.tempatLahir &&
        statusNikah == other.statusNikah &&
        agama == other.agama &&
        kKfoto == other.kKfoto &&
        kTPScan == other.kTPScan &&
        alamat == other.alamat &&
        foto == other.foto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(0,
                                                        dokumenWarga.hashCode),
                                                    namaWarga.hashCode),
                                                nik.hashCode),
                                            noKK.hashCode),
                                        tanggalLahir.hashCode),
                                    tempatLahir.hashCode),
                                statusNikah.hashCode),
                            agama.hashCode),
                        kKfoto.hashCode),
                    kTPScan.hashCode),
                alamat.hashCode),
            foto.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataWargaRecord')
          ..add('dokumenWarga', dokumenWarga)
          ..add('namaWarga', namaWarga)
          ..add('nik', nik)
          ..add('noKK', noKK)
          ..add('tanggalLahir', tanggalLahir)
          ..add('tempatLahir', tempatLahir)
          ..add('statusNikah', statusNikah)
          ..add('agama', agama)
          ..add('kKfoto', kKfoto)
          ..add('kTPScan', kTPScan)
          ..add('alamat', alamat)
          ..add('foto', foto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DataWargaRecordBuilder
    implements Builder<DataWargaRecord, DataWargaRecordBuilder> {
  _$DataWargaRecord? _$v;

  DocumentReference<Object?>? _dokumenWarga;
  DocumentReference<Object?>? get dokumenWarga => _$this._dokumenWarga;
  set dokumenWarga(DocumentReference<Object?>? dokumenWarga) =>
      _$this._dokumenWarga = dokumenWarga;

  String? _namaWarga;
  String? get namaWarga => _$this._namaWarga;
  set namaWarga(String? namaWarga) => _$this._namaWarga = namaWarga;

  String? _nik;
  String? get nik => _$this._nik;
  set nik(String? nik) => _$this._nik = nik;

  int? _noKK;
  int? get noKK => _$this._noKK;
  set noKK(int? noKK) => _$this._noKK = noKK;

  String? _tanggalLahir;
  String? get tanggalLahir => _$this._tanggalLahir;
  set tanggalLahir(String? tanggalLahir) => _$this._tanggalLahir = tanggalLahir;

  String? _tempatLahir;
  String? get tempatLahir => _$this._tempatLahir;
  set tempatLahir(String? tempatLahir) => _$this._tempatLahir = tempatLahir;

  String? _statusNikah;
  String? get statusNikah => _$this._statusNikah;
  set statusNikah(String? statusNikah) => _$this._statusNikah = statusNikah;

  String? _agama;
  String? get agama => _$this._agama;
  set agama(String? agama) => _$this._agama = agama;

  String? _kKfoto;
  String? get kKfoto => _$this._kKfoto;
  set kKfoto(String? kKfoto) => _$this._kKfoto = kKfoto;

  String? _kTPScan;
  String? get kTPScan => _$this._kTPScan;
  set kTPScan(String? kTPScan) => _$this._kTPScan = kTPScan;

  String? _alamat;
  String? get alamat => _$this._alamat;
  set alamat(String? alamat) => _$this._alamat = alamat;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DataWargaRecordBuilder() {
    DataWargaRecord._initializeBuilder(this);
  }

  DataWargaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dokumenWarga = $v.dokumenWarga;
      _namaWarga = $v.namaWarga;
      _nik = $v.nik;
      _noKK = $v.noKK;
      _tanggalLahir = $v.tanggalLahir;
      _tempatLahir = $v.tempatLahir;
      _statusNikah = $v.statusNikah;
      _agama = $v.agama;
      _kKfoto = $v.kKfoto;
      _kTPScan = $v.kTPScan;
      _alamat = $v.alamat;
      _foto = $v.foto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataWargaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataWargaRecord;
  }

  @override
  void update(void Function(DataWargaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataWargaRecord build() => _build();

  _$DataWargaRecord _build() {
    final _$result = _$v ??
        new _$DataWargaRecord._(
            dokumenWarga: dokumenWarga,
            namaWarga: namaWarga,
            nik: nik,
            noKK: noKK,
            tanggalLahir: tanggalLahir,
            tempatLahir: tempatLahir,
            statusNikah: statusNikah,
            agama: agama,
            kKfoto: kKfoto,
            kTPScan: kTPScan,
            alamat: alamat,
            foto: foto,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
