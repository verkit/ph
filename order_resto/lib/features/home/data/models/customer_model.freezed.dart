// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) {
  return _CustomerResponse.fromJson(json);
}

/// @nodoc
class _$CustomerResponseTearOff {
  const _$CustomerResponseTearOff();

  _CustomerResponse call({List<CustomerModel>? data}) {
    return _CustomerResponse(
      data: data,
    );
  }

  CustomerResponse fromJson(Map<String, Object?> json) {
    return CustomerResponse.fromJson(json);
  }
}

/// @nodoc
const $CustomerResponse = _$CustomerResponseTearOff();

/// @nodoc
mixin _$CustomerResponse {
// int? currentPage,
  List<CustomerModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerResponseCopyWith<CustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerResponseCopyWith<$Res> {
  factory $CustomerResponseCopyWith(
          CustomerResponse value, $Res Function(CustomerResponse) then) =
      _$CustomerResponseCopyWithImpl<$Res>;
  $Res call({List<CustomerModel>? data});
}

/// @nodoc
class _$CustomerResponseCopyWithImpl<$Res>
    implements $CustomerResponseCopyWith<$Res> {
  _$CustomerResponseCopyWithImpl(this._value, this._then);

  final CustomerResponse _value;
  // ignore: unused_field
  final $Res Function(CustomerResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerResponseCopyWith<$Res>
    implements $CustomerResponseCopyWith<$Res> {
  factory _$CustomerResponseCopyWith(
          _CustomerResponse value, $Res Function(_CustomerResponse) then) =
      __$CustomerResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<CustomerModel>? data});
}

/// @nodoc
class __$CustomerResponseCopyWithImpl<$Res>
    extends _$CustomerResponseCopyWithImpl<$Res>
    implements _$CustomerResponseCopyWith<$Res> {
  __$CustomerResponseCopyWithImpl(
      _CustomerResponse _value, $Res Function(_CustomerResponse) _then)
      : super(_value, (v) => _then(v as _CustomerResponse));

  @override
  _CustomerResponse get _value => super._value as _CustomerResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_CustomerResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerResponse implements _CustomerResponse {
  const _$_CustomerResponse({this.data});

  factory _$_CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerResponseFromJson(json);

  @override // int? currentPage,
  final List<CustomerModel>? data;

  @override
  String toString() {
    return 'CustomerResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$CustomerResponseCopyWith<_CustomerResponse> get copyWith =>
      __$CustomerResponseCopyWithImpl<_CustomerResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerResponseToJson(this);
  }
}

abstract class _CustomerResponse implements CustomerResponse {
  const factory _CustomerResponse({List<CustomerModel>? data}) =
      _$_CustomerResponse;

  factory _CustomerResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomerResponse.fromJson;

  @override // int? currentPage,
  List<CustomerModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$CustomerResponseCopyWith<_CustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
class _$CustomerModelTearOff {
  const _$CustomerModelTearOff();

  _CustomerModel call(
      {int? idtab,
      String? kodePelanggan,
      String? levelMember,
      dynamic gelar,
      String? namaPelanggan,
      String? kontak,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? fax,
      String? npwp,
      dynamic noPerkiraanLangganan,
      String? noRekeningBank,
      String? namaBank,
      String? kreditLimitFaktur,
      String? kreditLimitRp,
      String? piutangAwal,
      dynamic kodecustomer,
      dynamic namacustomer,
      dynamic kodesubcustomer,
      dynamic namasubcustomer,
      dynamic flagcustomer,
      dynamic flagpesan,
      dynamic jumlah,
      dynamic meja}) {
    return _CustomerModel(
      idtab: idtab,
      kodePelanggan: kodePelanggan,
      levelMember: levelMember,
      gelar: gelar,
      namaPelanggan: namaPelanggan,
      kontak: kontak,
      alamat: alamat,
      kota: kota,
      kodePos: kodePos,
      telepon: telepon,
      hp: hp,
      fax: fax,
      npwp: npwp,
      noPerkiraanLangganan: noPerkiraanLangganan,
      noRekeningBank: noRekeningBank,
      namaBank: namaBank,
      kreditLimitFaktur: kreditLimitFaktur,
      kreditLimitRp: kreditLimitRp,
      piutangAwal: piutangAwal,
      kodecustomer: kodecustomer,
      namacustomer: namacustomer,
      kodesubcustomer: kodesubcustomer,
      namasubcustomer: namasubcustomer,
      flagcustomer: flagcustomer,
      flagpesan: flagpesan,
      jumlah: jumlah,
      meja: meja,
    );
  }

  CustomerModel fromJson(Map<String, Object?> json) {
    return CustomerModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerModel = _$CustomerModelTearOff();

/// @nodoc
mixin _$CustomerModel {
  int? get idtab => throw _privateConstructorUsedError;
  String? get kodePelanggan => throw _privateConstructorUsedError;
  String? get levelMember => throw _privateConstructorUsedError;
  dynamic get gelar => throw _privateConstructorUsedError;
  String? get namaPelanggan => throw _privateConstructorUsedError;
  String? get kontak => throw _privateConstructorUsedError;
  String? get alamat => throw _privateConstructorUsedError;
  String? get kota => throw _privateConstructorUsedError;
  String? get kodePos => throw _privateConstructorUsedError;
  String? get telepon => throw _privateConstructorUsedError;
  String? get hp => throw _privateConstructorUsedError;
  String? get fax => throw _privateConstructorUsedError;
  String? get npwp => throw _privateConstructorUsedError;
  dynamic get noPerkiraanLangganan => throw _privateConstructorUsedError;
  String? get noRekeningBank => throw _privateConstructorUsedError;
  String? get namaBank => throw _privateConstructorUsedError;
  String? get kreditLimitFaktur => throw _privateConstructorUsedError;
  String? get kreditLimitRp => throw _privateConstructorUsedError;
  String? get piutangAwal => throw _privateConstructorUsedError;
  dynamic get kodecustomer => throw _privateConstructorUsedError;
  dynamic get namacustomer => throw _privateConstructorUsedError;
  dynamic get kodesubcustomer => throw _privateConstructorUsedError;
  dynamic get namasubcustomer => throw _privateConstructorUsedError;
  dynamic get flagcustomer => throw _privateConstructorUsedError;
  dynamic get flagpesan => throw _privateConstructorUsedError;
  dynamic get jumlah => throw _privateConstructorUsedError;
  dynamic get meja => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res>;
  $Res call(
      {int? idtab,
      String? kodePelanggan,
      String? levelMember,
      dynamic gelar,
      String? namaPelanggan,
      String? kontak,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? fax,
      String? npwp,
      dynamic noPerkiraanLangganan,
      String? noRekeningBank,
      String? namaBank,
      String? kreditLimitFaktur,
      String? kreditLimitRp,
      String? piutangAwal,
      dynamic kodecustomer,
      dynamic namacustomer,
      dynamic kodesubcustomer,
      dynamic namasubcustomer,
      dynamic flagcustomer,
      dynamic flagpesan,
      dynamic jumlah,
      dynamic meja});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  final CustomerModel _value;
  // ignore: unused_field
  final $Res Function(CustomerModel) _then;

  @override
  $Res call({
    Object? idtab = freezed,
    Object? kodePelanggan = freezed,
    Object? levelMember = freezed,
    Object? gelar = freezed,
    Object? namaPelanggan = freezed,
    Object? kontak = freezed,
    Object? alamat = freezed,
    Object? kota = freezed,
    Object? kodePos = freezed,
    Object? telepon = freezed,
    Object? hp = freezed,
    Object? fax = freezed,
    Object? npwp = freezed,
    Object? noPerkiraanLangganan = freezed,
    Object? noRekeningBank = freezed,
    Object? namaBank = freezed,
    Object? kreditLimitFaktur = freezed,
    Object? kreditLimitRp = freezed,
    Object? piutangAwal = freezed,
    Object? kodecustomer = freezed,
    Object? namacustomer = freezed,
    Object? kodesubcustomer = freezed,
    Object? namasubcustomer = freezed,
    Object? flagcustomer = freezed,
    Object? flagpesan = freezed,
    Object? jumlah = freezed,
    Object? meja = freezed,
  }) {
    return _then(_value.copyWith(
      idtab: idtab == freezed
          ? _value.idtab
          : idtab // ignore: cast_nullable_to_non_nullable
              as int?,
      kodePelanggan: kodePelanggan == freezed
          ? _value.kodePelanggan
          : kodePelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      levelMember: levelMember == freezed
          ? _value.levelMember
          : levelMember // ignore: cast_nullable_to_non_nullable
              as String?,
      gelar: gelar == freezed
          ? _value.gelar
          : gelar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namaPelanggan: namaPelanggan == freezed
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      kontak: kontak == freezed
          ? _value.kontak
          : kontak // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: alamat == freezed
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: kota == freezed
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePos: kodePos == freezed
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      telepon: telepon == freezed
          ? _value.telepon
          : telepon // ignore: cast_nullable_to_non_nullable
              as String?,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      fax: fax == freezed
          ? _value.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String?,
      npwp: npwp == freezed
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
      noPerkiraanLangganan: noPerkiraanLangganan == freezed
          ? _value.noPerkiraanLangganan
          : noPerkiraanLangganan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      noRekeningBank: noRekeningBank == freezed
          ? _value.noRekeningBank
          : noRekeningBank // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBank: namaBank == freezed
          ? _value.namaBank
          : namaBank // ignore: cast_nullable_to_non_nullable
              as String?,
      kreditLimitFaktur: kreditLimitFaktur == freezed
          ? _value.kreditLimitFaktur
          : kreditLimitFaktur // ignore: cast_nullable_to_non_nullable
              as String?,
      kreditLimitRp: kreditLimitRp == freezed
          ? _value.kreditLimitRp
          : kreditLimitRp // ignore: cast_nullable_to_non_nullable
              as String?,
      piutangAwal: piutangAwal == freezed
          ? _value.piutangAwal
          : piutangAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecustomer: kodecustomer == freezed
          ? _value.kodecustomer
          : kodecustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namacustomer: namacustomer == freezed
          ? _value.namacustomer
          : namacustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kodesubcustomer: kodesubcustomer == freezed
          ? _value.kodesubcustomer
          : kodesubcustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namasubcustomer: namasubcustomer == freezed
          ? _value.namasubcustomer
          : namasubcustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      flagcustomer: flagcustomer == freezed
          ? _value.flagcustomer
          : flagcustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      flagpesan: flagpesan == freezed
          ? _value.flagpesan
          : flagpesan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jumlah: jumlah == freezed
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meja: meja == freezed
          ? _value.meja
          : meja // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CustomerModelCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$CustomerModelCopyWith(
          _CustomerModel value, $Res Function(_CustomerModel) then) =
      __$CustomerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? idtab,
      String? kodePelanggan,
      String? levelMember,
      dynamic gelar,
      String? namaPelanggan,
      String? kontak,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? fax,
      String? npwp,
      dynamic noPerkiraanLangganan,
      String? noRekeningBank,
      String? namaBank,
      String? kreditLimitFaktur,
      String? kreditLimitRp,
      String? piutangAwal,
      dynamic kodecustomer,
      dynamic namacustomer,
      dynamic kodesubcustomer,
      dynamic namasubcustomer,
      dynamic flagcustomer,
      dynamic flagpesan,
      dynamic jumlah,
      dynamic meja});
}

/// @nodoc
class __$CustomerModelCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res>
    implements _$CustomerModelCopyWith<$Res> {
  __$CustomerModelCopyWithImpl(
      _CustomerModel _value, $Res Function(_CustomerModel) _then)
      : super(_value, (v) => _then(v as _CustomerModel));

  @override
  _CustomerModel get _value => super._value as _CustomerModel;

  @override
  $Res call({
    Object? idtab = freezed,
    Object? kodePelanggan = freezed,
    Object? levelMember = freezed,
    Object? gelar = freezed,
    Object? namaPelanggan = freezed,
    Object? kontak = freezed,
    Object? alamat = freezed,
    Object? kota = freezed,
    Object? kodePos = freezed,
    Object? telepon = freezed,
    Object? hp = freezed,
    Object? fax = freezed,
    Object? npwp = freezed,
    Object? noPerkiraanLangganan = freezed,
    Object? noRekeningBank = freezed,
    Object? namaBank = freezed,
    Object? kreditLimitFaktur = freezed,
    Object? kreditLimitRp = freezed,
    Object? piutangAwal = freezed,
    Object? kodecustomer = freezed,
    Object? namacustomer = freezed,
    Object? kodesubcustomer = freezed,
    Object? namasubcustomer = freezed,
    Object? flagcustomer = freezed,
    Object? flagpesan = freezed,
    Object? jumlah = freezed,
    Object? meja = freezed,
  }) {
    return _then(_CustomerModel(
      idtab: idtab == freezed
          ? _value.idtab
          : idtab // ignore: cast_nullable_to_non_nullable
              as int?,
      kodePelanggan: kodePelanggan == freezed
          ? _value.kodePelanggan
          : kodePelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      levelMember: levelMember == freezed
          ? _value.levelMember
          : levelMember // ignore: cast_nullable_to_non_nullable
              as String?,
      gelar: gelar == freezed
          ? _value.gelar
          : gelar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namaPelanggan: namaPelanggan == freezed
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      kontak: kontak == freezed
          ? _value.kontak
          : kontak // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: alamat == freezed
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: kota == freezed
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePos: kodePos == freezed
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      telepon: telepon == freezed
          ? _value.telepon
          : telepon // ignore: cast_nullable_to_non_nullable
              as String?,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      fax: fax == freezed
          ? _value.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String?,
      npwp: npwp == freezed
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
      noPerkiraanLangganan: noPerkiraanLangganan == freezed
          ? _value.noPerkiraanLangganan
          : noPerkiraanLangganan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      noRekeningBank: noRekeningBank == freezed
          ? _value.noRekeningBank
          : noRekeningBank // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBank: namaBank == freezed
          ? _value.namaBank
          : namaBank // ignore: cast_nullable_to_non_nullable
              as String?,
      kreditLimitFaktur: kreditLimitFaktur == freezed
          ? _value.kreditLimitFaktur
          : kreditLimitFaktur // ignore: cast_nullable_to_non_nullable
              as String?,
      kreditLimitRp: kreditLimitRp == freezed
          ? _value.kreditLimitRp
          : kreditLimitRp // ignore: cast_nullable_to_non_nullable
              as String?,
      piutangAwal: piutangAwal == freezed
          ? _value.piutangAwal
          : piutangAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      kodecustomer: kodecustomer == freezed
          ? _value.kodecustomer
          : kodecustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namacustomer: namacustomer == freezed
          ? _value.namacustomer
          : namacustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kodesubcustomer: kodesubcustomer == freezed
          ? _value.kodesubcustomer
          : kodesubcustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      namasubcustomer: namasubcustomer == freezed
          ? _value.namasubcustomer
          : namasubcustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      flagcustomer: flagcustomer == freezed
          ? _value.flagcustomer
          : flagcustomer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      flagpesan: flagpesan == freezed
          ? _value.flagpesan
          : flagpesan // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jumlah: jumlah == freezed
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meja: meja == freezed
          ? _value.meja
          : meja // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerModel extends _CustomerModel {
  const _$_CustomerModel(
      {this.idtab,
      this.kodePelanggan,
      this.levelMember,
      this.gelar,
      this.namaPelanggan,
      this.kontak,
      this.alamat,
      this.kota,
      this.kodePos,
      this.telepon,
      this.hp,
      this.fax,
      this.npwp,
      this.noPerkiraanLangganan,
      this.noRekeningBank,
      this.namaBank,
      this.kreditLimitFaktur,
      this.kreditLimitRp,
      this.piutangAwal,
      this.kodecustomer,
      this.namacustomer,
      this.kodesubcustomer,
      this.namasubcustomer,
      this.flagcustomer,
      this.flagpesan,
      this.jumlah,
      this.meja})
      : super._();

  factory _$_CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerModelFromJson(json);

  @override
  final int? idtab;
  @override
  final String? kodePelanggan;
  @override
  final String? levelMember;
  @override
  final dynamic gelar;
  @override
  final String? namaPelanggan;
  @override
  final String? kontak;
  @override
  final String? alamat;
  @override
  final String? kota;
  @override
  final String? kodePos;
  @override
  final String? telepon;
  @override
  final String? hp;
  @override
  final String? fax;
  @override
  final String? npwp;
  @override
  final dynamic noPerkiraanLangganan;
  @override
  final String? noRekeningBank;
  @override
  final String? namaBank;
  @override
  final String? kreditLimitFaktur;
  @override
  final String? kreditLimitRp;
  @override
  final String? piutangAwal;
  @override
  final dynamic kodecustomer;
  @override
  final dynamic namacustomer;
  @override
  final dynamic kodesubcustomer;
  @override
  final dynamic namasubcustomer;
  @override
  final dynamic flagcustomer;
  @override
  final dynamic flagpesan;
  @override
  final dynamic jumlah;
  @override
  final dynamic meja;

  @override
  String toString() {
    return 'CustomerModel(idtab: $idtab, kodePelanggan: $kodePelanggan, levelMember: $levelMember, gelar: $gelar, namaPelanggan: $namaPelanggan, kontak: $kontak, alamat: $alamat, kota: $kota, kodePos: $kodePos, telepon: $telepon, hp: $hp, fax: $fax, npwp: $npwp, noPerkiraanLangganan: $noPerkiraanLangganan, noRekeningBank: $noRekeningBank, namaBank: $namaBank, kreditLimitFaktur: $kreditLimitFaktur, kreditLimitRp: $kreditLimitRp, piutangAwal: $piutangAwal, kodecustomer: $kodecustomer, namacustomer: $namacustomer, kodesubcustomer: $kodesubcustomer, namasubcustomer: $namasubcustomer, flagcustomer: $flagcustomer, flagpesan: $flagpesan, jumlah: $jumlah, meja: $meja)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerModel &&
            const DeepCollectionEquality().equals(other.idtab, idtab) &&
            const DeepCollectionEquality()
                .equals(other.kodePelanggan, kodePelanggan) &&
            const DeepCollectionEquality()
                .equals(other.levelMember, levelMember) &&
            const DeepCollectionEquality().equals(other.gelar, gelar) &&
            const DeepCollectionEquality()
                .equals(other.namaPelanggan, namaPelanggan) &&
            const DeepCollectionEquality().equals(other.kontak, kontak) &&
            const DeepCollectionEquality().equals(other.alamat, alamat) &&
            const DeepCollectionEquality().equals(other.kota, kota) &&
            const DeepCollectionEquality().equals(other.kodePos, kodePos) &&
            const DeepCollectionEquality().equals(other.telepon, telepon) &&
            const DeepCollectionEquality().equals(other.hp, hp) &&
            const DeepCollectionEquality().equals(other.fax, fax) &&
            const DeepCollectionEquality().equals(other.npwp, npwp) &&
            const DeepCollectionEquality()
                .equals(other.noPerkiraanLangganan, noPerkiraanLangganan) &&
            const DeepCollectionEquality()
                .equals(other.noRekeningBank, noRekeningBank) &&
            const DeepCollectionEquality().equals(other.namaBank, namaBank) &&
            const DeepCollectionEquality()
                .equals(other.kreditLimitFaktur, kreditLimitFaktur) &&
            const DeepCollectionEquality()
                .equals(other.kreditLimitRp, kreditLimitRp) &&
            const DeepCollectionEquality()
                .equals(other.piutangAwal, piutangAwal) &&
            const DeepCollectionEquality()
                .equals(other.kodecustomer, kodecustomer) &&
            const DeepCollectionEquality()
                .equals(other.namacustomer, namacustomer) &&
            const DeepCollectionEquality()
                .equals(other.kodesubcustomer, kodesubcustomer) &&
            const DeepCollectionEquality()
                .equals(other.namasubcustomer, namasubcustomer) &&
            const DeepCollectionEquality()
                .equals(other.flagcustomer, flagcustomer) &&
            const DeepCollectionEquality().equals(other.flagpesan, flagpesan) &&
            const DeepCollectionEquality().equals(other.jumlah, jumlah) &&
            const DeepCollectionEquality().equals(other.meja, meja));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(idtab),
        const DeepCollectionEquality().hash(kodePelanggan),
        const DeepCollectionEquality().hash(levelMember),
        const DeepCollectionEquality().hash(gelar),
        const DeepCollectionEquality().hash(namaPelanggan),
        const DeepCollectionEquality().hash(kontak),
        const DeepCollectionEquality().hash(alamat),
        const DeepCollectionEquality().hash(kota),
        const DeepCollectionEquality().hash(kodePos),
        const DeepCollectionEquality().hash(telepon),
        const DeepCollectionEquality().hash(hp),
        const DeepCollectionEquality().hash(fax),
        const DeepCollectionEquality().hash(npwp),
        const DeepCollectionEquality().hash(noPerkiraanLangganan),
        const DeepCollectionEquality().hash(noRekeningBank),
        const DeepCollectionEquality().hash(namaBank),
        const DeepCollectionEquality().hash(kreditLimitFaktur),
        const DeepCollectionEquality().hash(kreditLimitRp),
        const DeepCollectionEquality().hash(piutangAwal),
        const DeepCollectionEquality().hash(kodecustomer),
        const DeepCollectionEquality().hash(namacustomer),
        const DeepCollectionEquality().hash(kodesubcustomer),
        const DeepCollectionEquality().hash(namasubcustomer),
        const DeepCollectionEquality().hash(flagcustomer),
        const DeepCollectionEquality().hash(flagpesan),
        const DeepCollectionEquality().hash(jumlah),
        const DeepCollectionEquality().hash(meja)
      ]);

  @JsonKey(ignore: true)
  @override
  _$CustomerModelCopyWith<_CustomerModel> get copyWith =>
      __$CustomerModelCopyWithImpl<_CustomerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerModelToJson(this);
  }
}

abstract class _CustomerModel extends CustomerModel {
  const factory _CustomerModel(
      {int? idtab,
      String? kodePelanggan,
      String? levelMember,
      dynamic gelar,
      String? namaPelanggan,
      String? kontak,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? fax,
      String? npwp,
      dynamic noPerkiraanLangganan,
      String? noRekeningBank,
      String? namaBank,
      String? kreditLimitFaktur,
      String? kreditLimitRp,
      String? piutangAwal,
      dynamic kodecustomer,
      dynamic namacustomer,
      dynamic kodesubcustomer,
      dynamic namasubcustomer,
      dynamic flagcustomer,
      dynamic flagpesan,
      dynamic jumlah,
      dynamic meja}) = _$_CustomerModel;
  const _CustomerModel._() : super._();

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerModel.fromJson;

  @override
  int? get idtab;
  @override
  String? get kodePelanggan;
  @override
  String? get levelMember;
  @override
  dynamic get gelar;
  @override
  String? get namaPelanggan;
  @override
  String? get kontak;
  @override
  String? get alamat;
  @override
  String? get kota;
  @override
  String? get kodePos;
  @override
  String? get telepon;
  @override
  String? get hp;
  @override
  String? get fax;
  @override
  String? get npwp;
  @override
  dynamic get noPerkiraanLangganan;
  @override
  String? get noRekeningBank;
  @override
  String? get namaBank;
  @override
  String? get kreditLimitFaktur;
  @override
  String? get kreditLimitRp;
  @override
  String? get piutangAwal;
  @override
  dynamic get kodecustomer;
  @override
  dynamic get namacustomer;
  @override
  dynamic get kodesubcustomer;
  @override
  dynamic get namasubcustomer;
  @override
  dynamic get flagcustomer;
  @override
  dynamic get flagpesan;
  @override
  dynamic get jumlah;
  @override
  dynamic get meja;
  @override
  @JsonKey(ignore: true)
  _$CustomerModelCopyWith<_CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
