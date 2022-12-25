// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perangkat_r_t_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PerangkatRTRecord> _$perangkatRTRecordSerializer =
    new _$PerangkatRTRecordSerializer();

class _$PerangkatRTRecordSerializer
    implements StructuredSerializer<PerangkatRTRecord> {
  @override
  final Iterable<Type> types = const [PerangkatRTRecord, _$PerangkatRTRecord];
  @override
  final String wireName = 'PerangkatRTRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PerangkatRTRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roles;
    if (value != null) {
      result
        ..add('Roles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('UserRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.alamat;
    if (value != null) {
      result
        ..add('Alamat')
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
  PerangkatRTRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PerangkatRTRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Roles':
          result.roles = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UserRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Alamat':
          result.alamat = serializers.deserialize(value,
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

class _$PerangkatRTRecord extends PerangkatRTRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? phoneNumber;
  @override
  final String? roles;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? alamat;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PerangkatRTRecord(
          [void Function(PerangkatRTRecordBuilder)? updates]) =>
      (new PerangkatRTRecordBuilder()..update(updates))._build();

  _$PerangkatRTRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.phoneNumber,
      this.roles,
      this.userRef,
      this.alamat,
      this.ffRef})
      : super._();

  @override
  PerangkatRTRecord rebuild(void Function(PerangkatRTRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerangkatRTRecordBuilder toBuilder() =>
      new PerangkatRTRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerangkatRTRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        phoneNumber == other.phoneNumber &&
        roles == other.roles &&
        userRef == other.userRef &&
        alamat == other.alamat &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, email.hashCode), displayName.hashCode),
                            photoUrl.hashCode),
                        phoneNumber.hashCode),
                    roles.hashCode),
                userRef.hashCode),
            alamat.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PerangkatRTRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('phoneNumber', phoneNumber)
          ..add('roles', roles)
          ..add('userRef', userRef)
          ..add('alamat', alamat)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PerangkatRTRecordBuilder
    implements Builder<PerangkatRTRecord, PerangkatRTRecordBuilder> {
  _$PerangkatRTRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _roles;
  String? get roles => _$this._roles;
  set roles(String? roles) => _$this._roles = roles;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _alamat;
  String? get alamat => _$this._alamat;
  set alamat(String? alamat) => _$this._alamat = alamat;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PerangkatRTRecordBuilder() {
    PerangkatRTRecord._initializeBuilder(this);
  }

  PerangkatRTRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _phoneNumber = $v.phoneNumber;
      _roles = $v.roles;
      _userRef = $v.userRef;
      _alamat = $v.alamat;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerangkatRTRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PerangkatRTRecord;
  }

  @override
  void update(void Function(PerangkatRTRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerangkatRTRecord build() => _build();

  _$PerangkatRTRecord _build() {
    final _$result = _$v ??
        new _$PerangkatRTRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            phoneNumber: phoneNumber,
            roles: roles,
            userRef: userRef,
            alamat: alamat,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
