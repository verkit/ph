// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodResponse _$FoodResponseFromJson(Map<String, dynamic> json) {
  return _FoodResponse.fromJson(json);
}

/// @nodoc
class _$FoodResponseTearOff {
  const _$FoodResponseTearOff();

  _FoodResponse call(
      {int? currentPage,
      List<FoodModel>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      String? nextPageUrl,
      String? path,
      @DynamicIntConverter() required int perPage,
      String? prevPageUrl,
      int? to,
      int? total}) {
    return _FoodResponse(
      currentPage: currentPage,
      data: data,
      firstPageUrl: firstPageUrl,
      from: from,
      lastPage: lastPage,
      lastPageUrl: lastPageUrl,
      links: links,
      nextPageUrl: nextPageUrl,
      path: path,
      perPage: perPage,
      prevPageUrl: prevPageUrl,
      to: to,
      total: total,
    );
  }

  FoodResponse fromJson(Map<String, Object?> json) {
    return FoodResponse.fromJson(json);
  }
}

/// @nodoc
const $FoodResponse = _$FoodResponseTearOff();

/// @nodoc
mixin _$FoodResponse {
  int? get currentPage => throw _privateConstructorUsedError;
  List<FoodModel>? get data => throw _privateConstructorUsedError;
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @DynamicIntConverter()
  int get perPage => throw _privateConstructorUsedError;
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodResponseCopyWith<FoodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodResponseCopyWith<$Res> {
  factory $FoodResponseCopyWith(
          FoodResponse value, $Res Function(FoodResponse) then) =
      _$FoodResponseCopyWithImpl<$Res>;
  $Res call(
      {int? currentPage,
      List<FoodModel>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      String? nextPageUrl,
      String? path,
      @DynamicIntConverter() int perPage,
      String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$FoodResponseCopyWithImpl<$Res> implements $FoodResponseCopyWith<$Res> {
  _$FoodResponseCopyWithImpl(this._value, this._then);

  final FoodResponse _value;
  // ignore: unused_field
  final $Res Function(FoodResponse) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FoodResponseCopyWith<$Res>
    implements $FoodResponseCopyWith<$Res> {
  factory _$FoodResponseCopyWith(
          _FoodResponse value, $Res Function(_FoodResponse) then) =
      __$FoodResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? currentPage,
      List<FoodModel>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      String? nextPageUrl,
      String? path,
      @DynamicIntConverter() int perPage,
      String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$FoodResponseCopyWithImpl<$Res> extends _$FoodResponseCopyWithImpl<$Res>
    implements _$FoodResponseCopyWith<$Res> {
  __$FoodResponseCopyWithImpl(
      _FoodResponse _value, $Res Function(_FoodResponse) _then)
      : super(_value, (v) => _then(v as _FoodResponse));

  @override
  _FoodResponse get _value => super._value as _FoodResponse;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_FoodResponse(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodResponse implements _FoodResponse {
  const _$_FoodResponse(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      @DynamicIntConverter() required this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  factory _$_FoodResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FoodResponseFromJson(json);

  @override
  final int? currentPage;
  @override
  final List<FoodModel>? data;
  @override
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  final int? lastPage;
  @override
  final String? lastPageUrl;
  @override
  final List<Link>? links;
  @override
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @DynamicIntConverter()
  final int perPage;
  @override
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'FoodResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FoodResponse &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.firstPageUrl, firstPageUrl) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality()
                .equals(other.lastPageUrl, lastPageUrl) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(firstPageUrl),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(lastPageUrl),
      const DeepCollectionEquality().hash(links),
      const DeepCollectionEquality().hash(nextPageUrl),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(prevPageUrl),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$FoodResponseCopyWith<_FoodResponse> get copyWith =>
      __$FoodResponseCopyWithImpl<_FoodResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodResponseToJson(this);
  }
}

abstract class _FoodResponse implements FoodResponse {
  const factory _FoodResponse(
      {int? currentPage,
      List<FoodModel>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      String? nextPageUrl,
      String? path,
      @DynamicIntConverter() required int perPage,
      String? prevPageUrl,
      int? to,
      int? total}) = _$_FoodResponse;

  factory _FoodResponse.fromJson(Map<String, dynamic> json) =
      _$_FoodResponse.fromJson;

  @override
  int? get currentPage;
  @override
  List<FoodModel>? get data;
  @override
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  int? get lastPage;
  @override
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @DynamicIntConverter()
  int get perPage;
  @override
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$FoodResponseCopyWith<_FoodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) {
  return _FoodModel.fromJson(json);
}

/// @nodoc
class _$FoodModelTearOff {
  const _$FoodModelTearOff();

  _FoodModel call(
      {int? idtab,
      String? kodeBarang,
      String? namaBarang,
      String? grup,
      String? namaKemasan,
      @StringDoubleConverter() required double hargajual1,
      String? gambar}) {
    return _FoodModel(
      idtab: idtab,
      kodeBarang: kodeBarang,
      namaBarang: namaBarang,
      grup: grup,
      namaKemasan: namaKemasan,
      hargajual1: hargajual1,
      gambar: gambar,
    );
  }

  FoodModel fromJson(Map<String, Object?> json) {
    return FoodModel.fromJson(json);
  }
}

/// @nodoc
const $FoodModel = _$FoodModelTearOff();

/// @nodoc
mixin _$FoodModel {
  int? get idtab => throw _privateConstructorUsedError;
  String? get kodeBarang => throw _privateConstructorUsedError;
  String? get namaBarang => throw _privateConstructorUsedError; // dynamic merk,
// dynamic barcode,
// dynamic rak,
  String? get grup => throw _privateConstructorUsedError; // dynamic subgrup,
// dynamic sn,
// dynamic tanggalExpired,
// dynamic type,
// String? isi1,
// String? isi2,
// String? isi3,
// String? isi4,
  String? get namaKemasan =>
      throw _privateConstructorUsedError; // String? hargaBeliakhir,
// String? hargaDasar,
// String? hpp,
// String? laba1,
// String? laba2,
// String? laba3,
// String? laba4,
// String? laba5,
// String? laba6,
  @StringDoubleConverter()
  double get hargajual1 =>
      throw _privateConstructorUsedError; // String? hargajual2,
// String? hargajual3,
// String? hargajual4,
// String? hargajual5,
// String? hargajual6,
// String? discount,
// String? discountRupiah,
// String? point,
// String? komisi,
// String? betwqty1,
// String? betwqty2,
// String? betwqty3,
// String? betwqty4,
// String? betwqty5,
// String? betwqty6,
// String? saldoStock,
// String? saldoJual,
// String? saldoRusak,
// String? saldoGudang1,
// String? saldoGudang2,
// String? saldoGudang3,
// String? saldoGudang4,
// String? saldoGudang5,
// String? saldosales01,
// String? saldosales02,
// String? saldosales03,
// String? saldosales04,
// String? saldosales05,
// String? saldosales06,
// String? saldosales07,
// String? saldosales08,
// String? saldosales09,
// String? saldosales10,
// String? saldosales11,
// String? saldosales12,
// String? saldoBadstock,
// String? saldoMinimal,
// String? saldoBeli,
// String? keterangan,
// String? saldoAwal,
// String? hargaAwal,
// dynamic tanggalAwal,
// dynamic tanggalBeliakhir,
// dynamic satuanBeliakhir,
// dynamic fakturBeliakhir,
// dynamic kodeSupplier,
// dynamic namaSupplier,
// dynamic kodeGudang,
// dynamic namaGudang,
// String? hargaBeliakhir1,
// String? hargaBeliakhir2,
// String? stokopnameBerjalan,
// dynamic tanggalStokopnameBerjalan,
// dynamic barcode1,
// dynamic barcode2,
// dynamic satuanBarcode1,
// dynamic satuanBarcode2,
// String? status,
// String? flagBkp,
// String? flagPromo,
// String? flagJualrugi,
// String? flagtrans,
// dynamic tanggalEdit,
// dynamic userEdit,
// String? flagGratis,
// String? qtypromo,
// String? qtygratis,
// String? flagoneprice,
// dynamic kemasan1,
// dynamic kemasan2,
// dynamic kemasan3,
  String? get gambar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodModelCopyWith<FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodModelCopyWith<$Res> {
  factory $FoodModelCopyWith(FoodModel value, $Res Function(FoodModel) then) =
      _$FoodModelCopyWithImpl<$Res>;
  $Res call(
      {int? idtab,
      String? kodeBarang,
      String? namaBarang,
      String? grup,
      String? namaKemasan,
      @StringDoubleConverter() double hargajual1,
      String? gambar});
}

/// @nodoc
class _$FoodModelCopyWithImpl<$Res> implements $FoodModelCopyWith<$Res> {
  _$FoodModelCopyWithImpl(this._value, this._then);

  final FoodModel _value;
  // ignore: unused_field
  final $Res Function(FoodModel) _then;

  @override
  $Res call({
    Object? idtab = freezed,
    Object? kodeBarang = freezed,
    Object? namaBarang = freezed,
    Object? grup = freezed,
    Object? namaKemasan = freezed,
    Object? hargajual1 = freezed,
    Object? gambar = freezed,
  }) {
    return _then(_value.copyWith(
      idtab: idtab == freezed
          ? _value.idtab
          : idtab // ignore: cast_nullable_to_non_nullable
              as int?,
      kodeBarang: kodeBarang == freezed
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      grup: grup == freezed
          ? _value.grup
          : grup // ignore: cast_nullable_to_non_nullable
              as String?,
      namaKemasan: namaKemasan == freezed
          ? _value.namaKemasan
          : namaKemasan // ignore: cast_nullable_to_non_nullable
              as String?,
      hargajual1: hargajual1 == freezed
          ? _value.hargajual1
          : hargajual1 // ignore: cast_nullable_to_non_nullable
              as double,
      gambar: gambar == freezed
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FoodModelCopyWith<$Res> implements $FoodModelCopyWith<$Res> {
  factory _$FoodModelCopyWith(
          _FoodModel value, $Res Function(_FoodModel) then) =
      __$FoodModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? idtab,
      String? kodeBarang,
      String? namaBarang,
      String? grup,
      String? namaKemasan,
      @StringDoubleConverter() double hargajual1,
      String? gambar});
}

/// @nodoc
class __$FoodModelCopyWithImpl<$Res> extends _$FoodModelCopyWithImpl<$Res>
    implements _$FoodModelCopyWith<$Res> {
  __$FoodModelCopyWithImpl(_FoodModel _value, $Res Function(_FoodModel) _then)
      : super(_value, (v) => _then(v as _FoodModel));

  @override
  _FoodModel get _value => super._value as _FoodModel;

  @override
  $Res call({
    Object? idtab = freezed,
    Object? kodeBarang = freezed,
    Object? namaBarang = freezed,
    Object? grup = freezed,
    Object? namaKemasan = freezed,
    Object? hargajual1 = freezed,
    Object? gambar = freezed,
  }) {
    return _then(_FoodModel(
      idtab: idtab == freezed
          ? _value.idtab
          : idtab // ignore: cast_nullable_to_non_nullable
              as int?,
      kodeBarang: kodeBarang == freezed
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      grup: grup == freezed
          ? _value.grup
          : grup // ignore: cast_nullable_to_non_nullable
              as String?,
      namaKemasan: namaKemasan == freezed
          ? _value.namaKemasan
          : namaKemasan // ignore: cast_nullable_to_non_nullable
              as String?,
      hargajual1: hargajual1 == freezed
          ? _value.hargajual1
          : hargajual1 // ignore: cast_nullable_to_non_nullable
              as double,
      gambar: gambar == freezed
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_FoodModel extends _FoodModel {
  const _$_FoodModel(
      {this.idtab,
      this.kodeBarang,
      this.namaBarang,
      this.grup,
      this.namaKemasan,
      @StringDoubleConverter() required this.hargajual1,
      this.gambar})
      : super._();

  factory _$_FoodModel.fromJson(Map<String, dynamic> json) =>
      _$$_FoodModelFromJson(json);

  @override
  final int? idtab;
  @override
  final String? kodeBarang;
  @override
  final String? namaBarang;
  @override // dynamic merk,
// dynamic barcode,
// dynamic rak,
  final String? grup;
  @override // dynamic subgrup,
// dynamic sn,
// dynamic tanggalExpired,
// dynamic type,
// String? isi1,
// String? isi2,
// String? isi3,
// String? isi4,
  final String? namaKemasan;
  @override // String? hargaBeliakhir,
// String? hargaDasar,
// String? hpp,
// String? laba1,
// String? laba2,
// String? laba3,
// String? laba4,
// String? laba5,
// String? laba6,
  @StringDoubleConverter()
  final double hargajual1;
  @override // String? hargajual2,
// String? hargajual3,
// String? hargajual4,
// String? hargajual5,
// String? hargajual6,
// String? discount,
// String? discountRupiah,
// String? point,
// String? komisi,
// String? betwqty1,
// String? betwqty2,
// String? betwqty3,
// String? betwqty4,
// String? betwqty5,
// String? betwqty6,
// String? saldoStock,
// String? saldoJual,
// String? saldoRusak,
// String? saldoGudang1,
// String? saldoGudang2,
// String? saldoGudang3,
// String? saldoGudang4,
// String? saldoGudang5,
// String? saldosales01,
// String? saldosales02,
// String? saldosales03,
// String? saldosales04,
// String? saldosales05,
// String? saldosales06,
// String? saldosales07,
// String? saldosales08,
// String? saldosales09,
// String? saldosales10,
// String? saldosales11,
// String? saldosales12,
// String? saldoBadstock,
// String? saldoMinimal,
// String? saldoBeli,
// String? keterangan,
// String? saldoAwal,
// String? hargaAwal,
// dynamic tanggalAwal,
// dynamic tanggalBeliakhir,
// dynamic satuanBeliakhir,
// dynamic fakturBeliakhir,
// dynamic kodeSupplier,
// dynamic namaSupplier,
// dynamic kodeGudang,
// dynamic namaGudang,
// String? hargaBeliakhir1,
// String? hargaBeliakhir2,
// String? stokopnameBerjalan,
// dynamic tanggalStokopnameBerjalan,
// dynamic barcode1,
// dynamic barcode2,
// dynamic satuanBarcode1,
// dynamic satuanBarcode2,
// String? status,
// String? flagBkp,
// String? flagPromo,
// String? flagJualrugi,
// String? flagtrans,
// dynamic tanggalEdit,
// dynamic userEdit,
// String? flagGratis,
// String? qtypromo,
// String? qtygratis,
// String? flagoneprice,
// dynamic kemasan1,
// dynamic kemasan2,
// dynamic kemasan3,
  final String? gambar;

  @override
  String toString() {
    return 'FoodModel(idtab: $idtab, kodeBarang: $kodeBarang, namaBarang: $namaBarang, grup: $grup, namaKemasan: $namaKemasan, hargajual1: $hargajual1, gambar: $gambar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FoodModel &&
            const DeepCollectionEquality().equals(other.idtab, idtab) &&
            const DeepCollectionEquality()
                .equals(other.kodeBarang, kodeBarang) &&
            const DeepCollectionEquality()
                .equals(other.namaBarang, namaBarang) &&
            const DeepCollectionEquality().equals(other.grup, grup) &&
            const DeepCollectionEquality()
                .equals(other.namaKemasan, namaKemasan) &&
            const DeepCollectionEquality()
                .equals(other.hargajual1, hargajual1) &&
            const DeepCollectionEquality().equals(other.gambar, gambar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idtab),
      const DeepCollectionEquality().hash(kodeBarang),
      const DeepCollectionEquality().hash(namaBarang),
      const DeepCollectionEquality().hash(grup),
      const DeepCollectionEquality().hash(namaKemasan),
      const DeepCollectionEquality().hash(hargajual1),
      const DeepCollectionEquality().hash(gambar));

  @JsonKey(ignore: true)
  @override
  _$FoodModelCopyWith<_FoodModel> get copyWith =>
      __$FoodModelCopyWithImpl<_FoodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodModelToJson(this);
  }
}

abstract class _FoodModel extends FoodModel {
  const factory _FoodModel(
      {int? idtab,
      String? kodeBarang,
      String? namaBarang,
      String? grup,
      String? namaKemasan,
      @StringDoubleConverter() required double hargajual1,
      String? gambar}) = _$_FoodModel;
  const _FoodModel._() : super._();

  factory _FoodModel.fromJson(Map<String, dynamic> json) =
      _$_FoodModel.fromJson;

  @override
  int? get idtab;
  @override
  String? get kodeBarang;
  @override
  String? get namaBarang;
  @override // dynamic merk,
// dynamic barcode,
// dynamic rak,
  String? get grup;
  @override // dynamic subgrup,
// dynamic sn,
// dynamic tanggalExpired,
// dynamic type,
// String? isi1,
// String? isi2,
// String? isi3,
// String? isi4,
  String? get namaKemasan;
  @override // String? hargaBeliakhir,
// String? hargaDasar,
// String? hpp,
// String? laba1,
// String? laba2,
// String? laba3,
// String? laba4,
// String? laba5,
// String? laba6,
  @StringDoubleConverter()
  double get hargajual1;
  @override // String? hargajual2,
// String? hargajual3,
// String? hargajual4,
// String? hargajual5,
// String? hargajual6,
// String? discount,
// String? discountRupiah,
// String? point,
// String? komisi,
// String? betwqty1,
// String? betwqty2,
// String? betwqty3,
// String? betwqty4,
// String? betwqty5,
// String? betwqty6,
// String? saldoStock,
// String? saldoJual,
// String? saldoRusak,
// String? saldoGudang1,
// String? saldoGudang2,
// String? saldoGudang3,
// String? saldoGudang4,
// String? saldoGudang5,
// String? saldosales01,
// String? saldosales02,
// String? saldosales03,
// String? saldosales04,
// String? saldosales05,
// String? saldosales06,
// String? saldosales07,
// String? saldosales08,
// String? saldosales09,
// String? saldosales10,
// String? saldosales11,
// String? saldosales12,
// String? saldoBadstock,
// String? saldoMinimal,
// String? saldoBeli,
// String? keterangan,
// String? saldoAwal,
// String? hargaAwal,
// dynamic tanggalAwal,
// dynamic tanggalBeliakhir,
// dynamic satuanBeliakhir,
// dynamic fakturBeliakhir,
// dynamic kodeSupplier,
// dynamic namaSupplier,
// dynamic kodeGudang,
// dynamic namaGudang,
// String? hargaBeliakhir1,
// String? hargaBeliakhir2,
// String? stokopnameBerjalan,
// dynamic tanggalStokopnameBerjalan,
// dynamic barcode1,
// dynamic barcode2,
// dynamic satuanBarcode1,
// dynamic satuanBarcode2,
// String? status,
// String? flagBkp,
// String? flagPromo,
// String? flagJualrugi,
// String? flagtrans,
// dynamic tanggalEdit,
// dynamic userEdit,
// String? flagGratis,
// String? qtypromo,
// String? qtygratis,
// String? flagoneprice,
// dynamic kemasan1,
// dynamic kemasan2,
// dynamic kemasan3,
  String? get gambar;
  @override
  @JsonKey(ignore: true)
  _$FoodModelCopyWith<_FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
