// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderEntityTearOff {
  const _$OrderEntityTearOff();

  _OrderEntity call(
      {String? kodeSales = '0001',
      String? namaSales = 'WAITERS01',
      required String kodePelanggan,
      required String namaPelanggan,
      required String latlong,
      required String hp,
      required List<CartEntity> items}) {
    return _OrderEntity(
      kodeSales: kodeSales,
      namaSales: namaSales,
      kodePelanggan: kodePelanggan,
      namaPelanggan: namaPelanggan,
      latlong: latlong,
      hp: hp,
      items: items,
    );
  }
}

/// @nodoc
const $OrderEntity = _$OrderEntityTearOff();

/// @nodoc
mixin _$OrderEntity {
  String? get kodeSales => throw _privateConstructorUsedError;
  String? get namaSales => throw _privateConstructorUsedError;
  String get kodePelanggan => throw _privateConstructorUsedError;
  String get namaPelanggan => throw _privateConstructorUsedError;
  String get latlong => throw _privateConstructorUsedError;
  String get hp => throw _privateConstructorUsedError;
  List<CartEntity> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res>;
  $Res call(
      {String? kodeSales,
      String? namaSales,
      String kodePelanggan,
      String namaPelanggan,
      String latlong,
      String hp,
      List<CartEntity> items});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  final OrderEntity _value;
  // ignore: unused_field
  final $Res Function(OrderEntity) _then;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
    Object? kodePelanggan = freezed,
    Object? namaPelanggan = freezed,
    Object? latlong = freezed,
    Object? hp = freezed,
    Object? items = freezed,
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
      latlong: latlong == freezed
          ? _value.latlong
          : latlong // ignore: cast_nullable_to_non_nullable
              as String,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartEntity>,
    ));
  }
}

/// @nodoc
abstract class _$OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(
          _OrderEntity value, $Res Function(_OrderEntity) then) =
      __$OrderEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? kodeSales,
      String? namaSales,
      String kodePelanggan,
      String namaPelanggan,
      String latlong,
      String hp,
      List<CartEntity> items});
}

/// @nodoc
class __$OrderEntityCopyWithImpl<$Res> extends _$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(
      _OrderEntity _value, $Res Function(_OrderEntity) _then)
      : super(_value, (v) => _then(v as _OrderEntity));

  @override
  _OrderEntity get _value => super._value as _OrderEntity;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
    Object? kodePelanggan = freezed,
    Object? namaPelanggan = freezed,
    Object? latlong = freezed,
    Object? hp = freezed,
    Object? items = freezed,
  }) {
    return _then(_OrderEntity(
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
      latlong: latlong == freezed
          ? _value.latlong
          : latlong // ignore: cast_nullable_to_non_nullable
              as String,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartEntity>,
    ));
  }
}

/// @nodoc

class _$_OrderEntity extends _OrderEntity {
  const _$_OrderEntity(
      {this.kodeSales = '0001',
      this.namaSales = 'WAITERS01',
      required this.kodePelanggan,
      required this.namaPelanggan,
      required this.latlong,
      required this.hp,
      required this.items})
      : super._();

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
  final String latlong;
  @override
  final String hp;
  @override
  final List<CartEntity> items;

  @override
  String toString() {
    return 'OrderEntity(kodeSales: $kodeSales, namaSales: $namaSales, kodePelanggan: $kodePelanggan, namaPelanggan: $namaPelanggan, latlong: $latlong, hp: $hp, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderEntity &&
            const DeepCollectionEquality().equals(other.kodeSales, kodeSales) &&
            const DeepCollectionEquality().equals(other.namaSales, namaSales) &&
            const DeepCollectionEquality()
                .equals(other.kodePelanggan, kodePelanggan) &&
            const DeepCollectionEquality()
                .equals(other.namaPelanggan, namaPelanggan) &&
            const DeepCollectionEquality().equals(other.latlong, latlong) &&
            const DeepCollectionEquality().equals(other.hp, hp) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kodeSales),
      const DeepCollectionEquality().hash(namaSales),
      const DeepCollectionEquality().hash(kodePelanggan),
      const DeepCollectionEquality().hash(namaPelanggan),
      const DeepCollectionEquality().hash(latlong),
      const DeepCollectionEquality().hash(hp),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);
}

abstract class _OrderEntity extends OrderEntity {
  const factory _OrderEntity(
      {String? kodeSales,
      String? namaSales,
      required String kodePelanggan,
      required String namaPelanggan,
      required String latlong,
      required String hp,
      required List<CartEntity> items}) = _$_OrderEntity;
  const _OrderEntity._() : super._();

  @override
  String? get kodeSales;
  @override
  String? get namaSales;
  @override
  String get kodePelanggan;
  @override
  String get namaPelanggan;
  @override
  String get latlong;
  @override
  String get hp;
  @override
  List<CartEntity> get items;
  @override
  @JsonKey(ignore: true)
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
