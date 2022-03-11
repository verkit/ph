// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
class _$OrderModelTearOff {
  const _$OrderModelTearOff();

  _OrderModel call(
      {String? kodeSales = '0001',
      String? namaSales = 'WAITERS01',
      required String kodePelanggan,
      required String namaPelanggan,
      required String kodeBarang,
      required String namaBarang,
      required String satuan,
      required int harga,
      required int qty,
      required String latlong,
      required String hp,
      required String grup,
      String? condiman}) {
    return _OrderModel(
      kodeSales: kodeSales,
      namaSales: namaSales,
      kodePelanggan: kodePelanggan,
      namaPelanggan: namaPelanggan,
      kodeBarang: kodeBarang,
      namaBarang: namaBarang,
      satuan: satuan,
      harga: harga,
      qty: qty,
      latlong: latlong,
      hp: hp,
      grup: grup,
      condiman: condiman,
    );
  }

  OrderModel fromJson(Map<String, Object?> json) {
    return OrderModel.fromJson(json);
  }
}

/// @nodoc
const $OrderModel = _$OrderModelTearOff();

/// @nodoc
mixin _$OrderModel {
  String? get kodeSales => throw _privateConstructorUsedError;
  String? get namaSales => throw _privateConstructorUsedError;
  String get kodePelanggan => throw _privateConstructorUsedError;
  String get namaPelanggan => throw _privateConstructorUsedError;
  String get kodeBarang => throw _privateConstructorUsedError;
  String get namaBarang => throw _privateConstructorUsedError;
  String get satuan => throw _privateConstructorUsedError;
  int get harga => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  String get latlong => throw _privateConstructorUsedError;
  String get hp => throw _privateConstructorUsedError;
  String get grup => throw _privateConstructorUsedError;
  String? get condiman => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res>;
  $Res call(
      {String? kodeSales,
      String? namaSales,
      String kodePelanggan,
      String namaPelanggan,
      String kodeBarang,
      String namaBarang,
      String satuan,
      int harga,
      int qty,
      String latlong,
      String hp,
      String grup,
      String? condiman});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  final OrderModel _value;
  // ignore: unused_field
  final $Res Function(OrderModel) _then;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
    Object? kodePelanggan = freezed,
    Object? namaPelanggan = freezed,
    Object? kodeBarang = freezed,
    Object? namaBarang = freezed,
    Object? satuan = freezed,
    Object? harga = freezed,
    Object? qty = freezed,
    Object? latlong = freezed,
    Object? hp = freezed,
    Object? grup = freezed,
    Object? condiman = freezed,
  }) {
    return _then(_value.copyWith(
      kodeSales: kodeSales == freezed
          ? _value.kodeSales
          : kodeSales // ignore: cast_nullable_to_non_nullable
              as String?,
      namaSales: namaSales == freezed
          ? _value.namaSales
          : namaSales // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePelanggan: kodePelanggan == freezed
          ? _value.kodePelanggan
          : kodePelanggan // ignore: cast_nullable_to_non_nullable
              as String,
      namaPelanggan: namaPelanggan == freezed
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeBarang: kodeBarang == freezed
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String,
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String,
      satuan: satuan == freezed
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String,
      harga: harga == freezed
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      latlong: latlong == freezed
          ? _value.latlong
          : latlong // ignore: cast_nullable_to_non_nullable
              as String,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String,
      grup: grup == freezed
          ? _value.grup
          : grup // ignore: cast_nullable_to_non_nullable
              as String,
      condiman: condiman == freezed
          ? _value.condiman
          : condiman // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) then) =
      __$OrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? kodeSales,
      String? namaSales,
      String kodePelanggan,
      String namaPelanggan,
      String kodeBarang,
      String namaBarang,
      String satuan,
      int harga,
      int qty,
      String latlong,
      String hp,
      String grup,
      String? condiman});
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(
      _OrderModel _value, $Res Function(_OrderModel) _then)
      : super(_value, (v) => _then(v as _OrderModel));

  @override
  _OrderModel get _value => super._value as _OrderModel;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
    Object? kodePelanggan = freezed,
    Object? namaPelanggan = freezed,
    Object? kodeBarang = freezed,
    Object? namaBarang = freezed,
    Object? satuan = freezed,
    Object? harga = freezed,
    Object? qty = freezed,
    Object? latlong = freezed,
    Object? hp = freezed,
    Object? grup = freezed,
    Object? condiman = freezed,
  }) {
    return _then(_OrderModel(
      kodeSales: kodeSales == freezed
          ? _value.kodeSales
          : kodeSales // ignore: cast_nullable_to_non_nullable
              as String?,
      namaSales: namaSales == freezed
          ? _value.namaSales
          : namaSales // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePelanggan: kodePelanggan == freezed
          ? _value.kodePelanggan
          : kodePelanggan // ignore: cast_nullable_to_non_nullable
              as String,
      namaPelanggan: namaPelanggan == freezed
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeBarang: kodeBarang == freezed
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String,
      namaBarang: namaBarang == freezed
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String,
      satuan: satuan == freezed
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String,
      harga: harga == freezed
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      latlong: latlong == freezed
          ? _value.latlong
          : latlong // ignore: cast_nullable_to_non_nullable
              as String,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String,
      grup: grup == freezed
          ? _value.grup
          : grup // ignore: cast_nullable_to_non_nullable
              as String,
      condiman: condiman == freezed
          ? _value.condiman
          : condiman // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {this.kodeSales = '0001',
      this.namaSales = 'WAITERS01',
      required this.kodePelanggan,
      required this.namaPelanggan,
      required this.kodeBarang,
      required this.namaBarang,
      required this.satuan,
      required this.harga,
      required this.qty,
      required this.latlong,
      required this.hp,
      required this.grup,
      this.condiman});

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @JsonKey()
  @override
  final String? kodeSales;
  @JsonKey()
  @override
  final String? namaSales;
  @override
  final String kodePelanggan;
  @override
  final String namaPelanggan;
  @override
  final String kodeBarang;
  @override
  final String namaBarang;
  @override
  final String satuan;
  @override
  final int harga;
  @override
  final int qty;
  @override
  final String latlong;
  @override
  final String hp;
  @override
  final String grup;
  @override
  final String? condiman;

  @override
  String toString() {
    return 'OrderModel(kodeSales: $kodeSales, namaSales: $namaSales, kodePelanggan: $kodePelanggan, namaPelanggan: $namaPelanggan, kodeBarang: $kodeBarang, namaBarang: $namaBarang, satuan: $satuan, harga: $harga, qty: $qty, latlong: $latlong, hp: $hp, grup: $grup, condiman: $condiman)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            const DeepCollectionEquality().equals(other.kodeSales, kodeSales) &&
            const DeepCollectionEquality().equals(other.namaSales, namaSales) &&
            const DeepCollectionEquality()
                .equals(other.kodePelanggan, kodePelanggan) &&
            const DeepCollectionEquality()
                .equals(other.namaPelanggan, namaPelanggan) &&
            const DeepCollectionEquality()
                .equals(other.kodeBarang, kodeBarang) &&
            const DeepCollectionEquality()
                .equals(other.namaBarang, namaBarang) &&
            const DeepCollectionEquality().equals(other.satuan, satuan) &&
            const DeepCollectionEquality().equals(other.harga, harga) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.latlong, latlong) &&
            const DeepCollectionEquality().equals(other.hp, hp) &&
            const DeepCollectionEquality().equals(other.grup, grup) &&
            const DeepCollectionEquality().equals(other.condiman, condiman));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kodeSales),
      const DeepCollectionEquality().hash(namaSales),
      const DeepCollectionEquality().hash(kodePelanggan),
      const DeepCollectionEquality().hash(namaPelanggan),
      const DeepCollectionEquality().hash(kodeBarang),
      const DeepCollectionEquality().hash(namaBarang),
      const DeepCollectionEquality().hash(satuan),
      const DeepCollectionEquality().hash(harga),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(latlong),
      const DeepCollectionEquality().hash(hp),
      const DeepCollectionEquality().hash(grup),
      const DeepCollectionEquality().hash(condiman));

  @JsonKey(ignore: true)
  @override
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(this);
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {String? kodeSales,
      String? namaSales,
      required String kodePelanggan,
      required String namaPelanggan,
      required String kodeBarang,
      required String namaBarang,
      required String satuan,
      required int harga,
      required int qty,
      required String latlong,
      required String hp,
      required String grup,
      String? condiman}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  String? get kodeSales;
  @override
  String? get namaSales;
  @override
  String get kodePelanggan;
  @override
  String get namaPelanggan;
  @override
  String get kodeBarang;
  @override
  String get namaBarang;
  @override
  String get satuan;
  @override
  int get harga;
  @override
  int get qty;
  @override
  String get latlong;
  @override
  String get hp;
  @override
  String get grup;
  @override
  String? get condiman;
  @override
  @JsonKey(ignore: true)
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
