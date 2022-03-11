// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEntityTearOff {
  const _$CartEntityTearOff();

  _CartEntity call(
      {@HiveField(0) required FoodEntity makanan,
      @HiveField(1) required int qty,
      @HiveField(2) String? condiman}) {
    return _CartEntity(
      makanan: makanan,
      qty: qty,
      condiman: condiman,
    );
  }
}

/// @nodoc
const $CartEntity = _$CartEntityTearOff();

/// @nodoc
mixin _$CartEntity {
  @HiveField(0)
  FoodEntity get makanan => throw _privateConstructorUsedError;
  @HiveField(1)
  int get qty => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get condiman => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEntityCopyWith<CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEntityCopyWith<$Res> {
  factory $CartEntityCopyWith(
          CartEntity value, $Res Function(CartEntity) then) =
      _$CartEntityCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) FoodEntity makanan,
      @HiveField(1) int qty,
      @HiveField(2) String? condiman});

  $FoodEntityCopyWith<$Res> get makanan;
}

/// @nodoc
class _$CartEntityCopyWithImpl<$Res> implements $CartEntityCopyWith<$Res> {
  _$CartEntityCopyWithImpl(this._value, this._then);

  final CartEntity _value;
  // ignore: unused_field
  final $Res Function(CartEntity) _then;

  @override
  $Res call({
    Object? makanan = freezed,
    Object? qty = freezed,
    Object? condiman = freezed,
  }) {
    return _then(_value.copyWith(
      makanan: makanan == freezed
          ? _value.makanan
          : makanan // ignore: cast_nullable_to_non_nullable
              as FoodEntity,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      condiman: condiman == freezed
          ? _value.condiman
          : condiman // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $FoodEntityCopyWith<$Res> get makanan {
    return $FoodEntityCopyWith<$Res>(_value.makanan, (value) {
      return _then(_value.copyWith(makanan: value));
    });
  }
}

/// @nodoc
abstract class _$CartEntityCopyWith<$Res> implements $CartEntityCopyWith<$Res> {
  factory _$CartEntityCopyWith(
          _CartEntity value, $Res Function(_CartEntity) then) =
      __$CartEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) FoodEntity makanan,
      @HiveField(1) int qty,
      @HiveField(2) String? condiman});

  @override
  $FoodEntityCopyWith<$Res> get makanan;
}

/// @nodoc
class __$CartEntityCopyWithImpl<$Res> extends _$CartEntityCopyWithImpl<$Res>
    implements _$CartEntityCopyWith<$Res> {
  __$CartEntityCopyWithImpl(
      _CartEntity _value, $Res Function(_CartEntity) _then)
      : super(_value, (v) => _then(v as _CartEntity));

  @override
  _CartEntity get _value => super._value as _CartEntity;

  @override
  $Res call({
    Object? makanan = freezed,
    Object? qty = freezed,
    Object? condiman = freezed,
  }) {
    return _then(_CartEntity(
      makanan: makanan == freezed
          ? _value.makanan
          : makanan // ignore: cast_nullable_to_non_nullable
              as FoodEntity,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      condiman: condiman == freezed
          ? _value.condiman
          : condiman // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CartEntity implements _CartEntity {
  const _$_CartEntity(
      {@HiveField(0) required this.makanan,
      @HiveField(1) required this.qty,
      @HiveField(2) this.condiman});

  @override
  @HiveField(0)
  final FoodEntity makanan;
  @override
  @HiveField(1)
  final int qty;
  @override
  @HiveField(2)
  final String? condiman;

  @override
  String toString() {
    return 'CartEntity(makanan: $makanan, qty: $qty, condiman: $condiman)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartEntity &&
            const DeepCollectionEquality().equals(other.makanan, makanan) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.condiman, condiman));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(makanan),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(condiman));

  @JsonKey(ignore: true)
  @override
  _$CartEntityCopyWith<_CartEntity> get copyWith =>
      __$CartEntityCopyWithImpl<_CartEntity>(this, _$identity);
}

abstract class _CartEntity implements CartEntity {
  const factory _CartEntity(
      {@HiveField(0) required FoodEntity makanan,
      @HiveField(1) required int qty,
      @HiveField(2) String? condiman}) = _$_CartEntity;

  @override
  @HiveField(0)
  FoodEntity get makanan;
  @override
  @HiveField(1)
  int get qty;
  @override
  @HiveField(2)
  String? get condiman;
  @override
  @JsonKey(ignore: true)
  _$CartEntityCopyWith<_CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
