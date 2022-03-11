// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SalesEntityTearOff {
  const _$SalesEntityTearOff();

  _SalesEntity call({required String kodeSales, required String namaSales}) {
    return _SalesEntity(
      kodeSales: kodeSales,
      namaSales: namaSales,
    );
  }
}

/// @nodoc
const $SalesEntity = _$SalesEntityTearOff();

/// @nodoc
mixin _$SalesEntity {
  String get kodeSales => throw _privateConstructorUsedError;
  String get namaSales => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesEntityCopyWith<SalesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesEntityCopyWith<$Res> {
  factory $SalesEntityCopyWith(
          SalesEntity value, $Res Function(SalesEntity) then) =
      _$SalesEntityCopyWithImpl<$Res>;
  $Res call({String kodeSales, String namaSales});
}

/// @nodoc
class _$SalesEntityCopyWithImpl<$Res> implements $SalesEntityCopyWith<$Res> {
  _$SalesEntityCopyWithImpl(this._value, this._then);

  final SalesEntity _value;
  // ignore: unused_field
  final $Res Function(SalesEntity) _then;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
  }) {
    return _then(_value.copyWith(
      kodeSales: kodeSales == freezed
          ? _value.kodeSales
          : kodeSales // ignore: cast_nullable_to_non_nullable
              as String,
      namaSales: namaSales == freezed
          ? _value.namaSales
          : namaSales // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SalesEntityCopyWith<$Res>
    implements $SalesEntityCopyWith<$Res> {
  factory _$SalesEntityCopyWith(
          _SalesEntity value, $Res Function(_SalesEntity) then) =
      __$SalesEntityCopyWithImpl<$Res>;
  @override
  $Res call({String kodeSales, String namaSales});
}

/// @nodoc
class __$SalesEntityCopyWithImpl<$Res> extends _$SalesEntityCopyWithImpl<$Res>
    implements _$SalesEntityCopyWith<$Res> {
  __$SalesEntityCopyWithImpl(
      _SalesEntity _value, $Res Function(_SalesEntity) _then)
      : super(_value, (v) => _then(v as _SalesEntity));

  @override
  _SalesEntity get _value => super._value as _SalesEntity;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
  }) {
    return _then(_SalesEntity(
      kodeSales: kodeSales == freezed
          ? _value.kodeSales
          : kodeSales // ignore: cast_nullable_to_non_nullable
              as String,
      namaSales: namaSales == freezed
          ? _value.namaSales
          : namaSales // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SalesEntity implements _SalesEntity {
  const _$_SalesEntity({required this.kodeSales, required this.namaSales});

  @override
  final String kodeSales;
  @override
  final String namaSales;

  @override
  String toString() {
    return 'SalesEntity(kodeSales: $kodeSales, namaSales: $namaSales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesEntity &&
            const DeepCollectionEquality().equals(other.kodeSales, kodeSales) &&
            const DeepCollectionEquality().equals(other.namaSales, namaSales));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kodeSales),
      const DeepCollectionEquality().hash(namaSales));

  @JsonKey(ignore: true)
  @override
  _$SalesEntityCopyWith<_SalesEntity> get copyWith =>
      __$SalesEntityCopyWithImpl<_SalesEntity>(this, _$identity);
}

abstract class _SalesEntity implements SalesEntity {
  const factory _SalesEntity(
      {required String kodeSales, required String namaSales}) = _$_SalesEntity;

  @override
  String get kodeSales;
  @override
  String get namaSales;
  @override
  @JsonKey(ignore: true)
  _$SalesEntityCopyWith<_SalesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
