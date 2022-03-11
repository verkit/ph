// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupEntityTearOff {
  const _$GroupEntityTearOff();

  _GroupEntity call(
      {required String name,
      required String icon,
      required String kode,
      bool selected = false}) {
    return _GroupEntity(
      name: name,
      icon: icon,
      kode: kode,
      selected: selected,
    );
  }
}

/// @nodoc
const $GroupEntity = _$GroupEntityTearOff();

/// @nodoc
mixin _$GroupEntity {
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get kode => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupEntityCopyWith<GroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEntityCopyWith<$Res> {
  factory $GroupEntityCopyWith(
          GroupEntity value, $Res Function(GroupEntity) then) =
      _$GroupEntityCopyWithImpl<$Res>;
  $Res call({String name, String icon, String kode, bool selected});
}

/// @nodoc
class _$GroupEntityCopyWithImpl<$Res> implements $GroupEntityCopyWith<$Res> {
  _$GroupEntityCopyWithImpl(this._value, this._then);

  final GroupEntity _value;
  // ignore: unused_field
  final $Res Function(GroupEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? kode = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      kode: kode == freezed
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GroupEntityCopyWith<$Res>
    implements $GroupEntityCopyWith<$Res> {
  factory _$GroupEntityCopyWith(
          _GroupEntity value, $Res Function(_GroupEntity) then) =
      __$GroupEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String icon, String kode, bool selected});
}

/// @nodoc
class __$GroupEntityCopyWithImpl<$Res> extends _$GroupEntityCopyWithImpl<$Res>
    implements _$GroupEntityCopyWith<$Res> {
  __$GroupEntityCopyWithImpl(
      _GroupEntity _value, $Res Function(_GroupEntity) _then)
      : super(_value, (v) => _then(v as _GroupEntity));

  @override
  _GroupEntity get _value => super._value as _GroupEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? kode = freezed,
    Object? selected = freezed,
  }) {
    return _then(_GroupEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      kode: kode == freezed
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupEntity extends _GroupEntity {
  const _$_GroupEntity(
      {required this.name,
      required this.icon,
      required this.kode,
      this.selected = false})
      : super._();

  @override
  final String name;
  @override
  final String icon;
  @override
  final String kode;
  @JsonKey()
  @override
  final bool selected;

  @override
  String toString() {
    return 'GroupEntity(name: $name, icon: $icon, kode: $kode, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.kode, kode) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(kode),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$GroupEntityCopyWith<_GroupEntity> get copyWith =>
      __$GroupEntityCopyWithImpl<_GroupEntity>(this, _$identity);
}

abstract class _GroupEntity extends GroupEntity {
  const factory _GroupEntity(
      {required String name,
      required String icon,
      required String kode,
      bool selected}) = _$_GroupEntity;
  const _GroupEntity._() : super._();

  @override
  String get name;
  @override
  String get icon;
  @override
  String get kode;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$GroupEntityCopyWith<_GroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
