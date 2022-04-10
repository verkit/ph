// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _DashboardState call(
      {List<FoodEntity>? foods,
      int? pageKey,
      bool? hasReachedMax,
      AppState? status}) {
    return _DashboardState(
      foods: foods,
      pageKey: pageKey,
      hasReachedMax: hasReachedMax,
      status: status,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  List<FoodEntity>? get foods => throw _privateConstructorUsedError;
  int? get pageKey => throw _privateConstructorUsedError;
  bool? get hasReachedMax => throw _privateConstructorUsedError;
  AppState? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {List<FoodEntity>? foods,
      int? pageKey,
      bool? hasReachedMax,
      AppState? status});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? foods = freezed,
    Object? pageKey = freezed,
    Object? hasReachedMax = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>?,
      pageKey: pageKey == freezed
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ));
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<FoodEntity>? foods,
      int? pageKey,
      bool? hasReachedMax,
      AppState? status});
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object? foods = freezed,
    Object? pageKey = freezed,
    Object? hasReachedMax = freezed,
    Object? status = freezed,
  }) {
    return _then(_DashboardState(
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>?,
      pageKey: pageKey == freezed
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {this.foods, this.pageKey, this.hasReachedMax, this.status});

  @override
  final List<FoodEntity>? foods;
  @override
  final int? pageKey;
  @override
  final bool? hasReachedMax;
  @override
  final AppState? status;

  @override
  String toString() {
    return 'DashboardState(foods: $foods, pageKey: $pageKey, hasReachedMax: $hasReachedMax, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardState &&
            const DeepCollectionEquality().equals(other.foods, foods) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(foods),
      const DeepCollectionEquality().hash(pageKey),
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {List<FoodEntity>? foods,
      int? pageKey,
      bool? hasReachedMax,
      AppState? status}) = _$_DashboardState;

  @override
  List<FoodEntity>? get foods;
  @override
  int? get pageKey;
  @override
  bool? get hasReachedMax;
  @override
  AppState? get status;
  @override
  @JsonKey(ignore: true)
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
