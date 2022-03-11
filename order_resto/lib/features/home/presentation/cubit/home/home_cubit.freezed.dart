// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required bool isDrawerOpen,
      List<GroupEntity>? groups,
      List<FoodEntity>? foods,
      List<CustomerEntity>? customers,
      GroupEntity? selectedGroup,
      String? query,
      AppState? status}) {
    return _HomeState(
      isDrawerOpen: isDrawerOpen,
      groups: groups,
      foods: foods,
      customers: customers,
      selectedGroup: selectedGroup,
      query: query,
      status: status,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  bool get isDrawerOpen => throw _privateConstructorUsedError;
  List<GroupEntity>? get groups => throw _privateConstructorUsedError;
  List<FoodEntity>? get foods => throw _privateConstructorUsedError;
  List<CustomerEntity>? get customers => throw _privateConstructorUsedError;
  GroupEntity? get selectedGroup => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  AppState? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isDrawerOpen,
      List<GroupEntity>? groups,
      List<FoodEntity>? foods,
      List<CustomerEntity>? customers,
      GroupEntity? selectedGroup,
      String? query,
      AppState? status});

  $GroupEntityCopyWith<$Res>? get selectedGroup;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isDrawerOpen = freezed,
    Object? groups = freezed,
    Object? foods = freezed,
    Object? customers = freezed,
    Object? selectedGroup = freezed,
    Object? query = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isDrawerOpen: isDrawerOpen == freezed
          ? _value.isDrawerOpen
          : isDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>?,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>?,
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerEntity>?,
      selectedGroup: selectedGroup == freezed
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupEntity?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ));
  }

  @override
  $GroupEntityCopyWith<$Res>? get selectedGroup {
    if (_value.selectedGroup == null) {
      return null;
    }

    return $GroupEntityCopyWith<$Res>(_value.selectedGroup!, (value) {
      return _then(_value.copyWith(selectedGroup: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isDrawerOpen,
      List<GroupEntity>? groups,
      List<FoodEntity>? foods,
      List<CustomerEntity>? customers,
      GroupEntity? selectedGroup,
      String? query,
      AppState? status});

  @override
  $GroupEntityCopyWith<$Res>? get selectedGroup;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? isDrawerOpen = freezed,
    Object? groups = freezed,
    Object? foods = freezed,
    Object? customers = freezed,
    Object? selectedGroup = freezed,
    Object? query = freezed,
    Object? status = freezed,
  }) {
    return _then(_HomeState(
      isDrawerOpen: isDrawerOpen == freezed
          ? _value.isDrawerOpen
          : isDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>?,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>?,
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerEntity>?,
      selectedGroup: selectedGroup == freezed
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupEntity?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isDrawerOpen,
      this.groups,
      this.foods,
      this.customers,
      this.selectedGroup,
      this.query,
      this.status});

  @override
  final bool isDrawerOpen;
  @override
  final List<GroupEntity>? groups;
  @override
  final List<FoodEntity>? foods;
  @override
  final List<CustomerEntity>? customers;
  @override
  final GroupEntity? selectedGroup;
  @override
  final String? query;
  @override
  final AppState? status;

  @override
  String toString() {
    return 'HomeState(isDrawerOpen: $isDrawerOpen, groups: $groups, foods: $foods, customers: $customers, selectedGroup: $selectedGroup, query: $query, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.isDrawerOpen, isDrawerOpen) &&
            const DeepCollectionEquality().equals(other.groups, groups) &&
            const DeepCollectionEquality().equals(other.foods, foods) &&
            const DeepCollectionEquality().equals(other.customers, customers) &&
            const DeepCollectionEquality()
                .equals(other.selectedGroup, selectedGroup) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDrawerOpen),
      const DeepCollectionEquality().hash(groups),
      const DeepCollectionEquality().hash(foods),
      const DeepCollectionEquality().hash(customers),
      const DeepCollectionEquality().hash(selectedGroup),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required bool isDrawerOpen,
      List<GroupEntity>? groups,
      List<FoodEntity>? foods,
      List<CustomerEntity>? customers,
      GroupEntity? selectedGroup,
      String? query,
      AppState? status}) = _$_HomeState;

  @override
  bool get isDrawerOpen;
  @override
  List<GroupEntity>? get groups;
  @override
  List<FoodEntity>? get foods;
  @override
  List<CustomerEntity>? get customers;
  @override
  GroupEntity? get selectedGroup;
  @override
  String? get query;
  @override
  AppState? get status;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
