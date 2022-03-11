// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerEntityTearOff {
  const _$CustomerEntityTearOff();

  _CustomerEntity call(
      {required String kodePelanggan, required String namaPelanggan}) {
    return _CustomerEntity(
      kodePelanggan: kodePelanggan,
      namaPelanggan: namaPelanggan,
    );
  }
}

/// @nodoc
const $CustomerEntity = _$CustomerEntityTearOff();

/// @nodoc
mixin _$CustomerEntity {
  String get kodePelanggan => throw _privateConstructorUsedError;
  String get namaPelanggan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerEntityCopyWith<CustomerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEntityCopyWith<$Res> {
  factory $CustomerEntityCopyWith(
          CustomerEntity value, $Res Function(CustomerEntity) then) =
      _$CustomerEntityCopyWithImpl<$Res>;
  $Res call({String kodePelanggan, String namaPelanggan});
}

/// @nodoc
class _$CustomerEntityCopyWithImpl<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._value, this._then);

  final CustomerEntity _value;
  // ignore: unused_field
  final $Res Function(CustomerEntity) _then;

  @override
  $Res call({
    Object? kodePelanggan = freezed,
    Object? namaPelanggan = freezed,
  }) {
    return _then(_value.copyWith(
      kodePelanggan: kodePelanggan == freezed
          ? _value.kodePelanggan
          : kodePelanggan // ignore: cast_nullable_to_non_nullable
              as String,
      namaPelanggan: namaPelanggan == freezed
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CustomerEntityCopyWith<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  factory _$CustomerEntityCopyWith(
          _CustomerEntity value, $Res Function(_CustomerEntity) then) =
      __$CustomerEntityCopyWithImpl<$Res>;
  @override
  $Res call({String kodePelanggan, String namaPelanggan});
}

/// @nodoc
class __$CustomerEntityCopyWithImpl<$Res>
    extends _$CustomerEntityCopyWithImpl<$Res>
    implements _$CustomerEntityCopyWith<$Res> {
  __$CustomerEntityCopyWithImpl(
      _CustomerEntity _value, $Res Function(_CustomerEntity) _then)
      : super(_value, (v) => _then(v as _CustomerEntity));

  @override
  _CustomerEntity get _value => super._value as _CustomerEntity;

  @override
  $Res call({
    Object? kodePelanggan = freezed,
    Object? namaPelanggan = freezed,
  }) {
    return _then(_CustomerEntity(
      kodePelanggan: kodePelanggan == freezed
          ? _value.kodePelanggan
          : kodePelanggan // ignore: cast_nullable_to_non_nullable
              as String,
      namaPelanggan: namaPelanggan == freezed
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CustomerEntity implements _CustomerEntity {
  const _$_CustomerEntity(
      {required this.kodePelanggan, required this.namaPelanggan});

  @override
  final String kodePelanggan;
  @override
  final String namaPelanggan;

  @override
  String toString() {
    return 'CustomerEntity(kodePelanggan: $kodePelanggan, namaPelanggan: $namaPelanggan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerEntity &&
            const DeepCollectionEquality()
                .equals(other.kodePelanggan, kodePelanggan) &&
            const DeepCollectionEquality()
                .equals(other.namaPelanggan, namaPelanggan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kodePelanggan),
      const DeepCollectionEquality().hash(namaPelanggan));

  @JsonKey(ignore: true)
  @override
  _$CustomerEntityCopyWith<_CustomerEntity> get copyWith =>
      __$CustomerEntityCopyWithImpl<_CustomerEntity>(this, _$identity);
}

abstract class _CustomerEntity implements CustomerEntity {
  const factory _CustomerEntity(
      {required String kodePelanggan,
      required String namaPelanggan}) = _$_CustomerEntity;

  @override
  String get kodePelanggan;
  @override
  String get namaPelanggan;
  @override
  @JsonKey(ignore: true)
  _$CustomerEntityCopyWith<_CustomerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
