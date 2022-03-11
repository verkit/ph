// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GrupResponse _$GrupResponseFromJson(Map<String, dynamic> json) {
  return _GrupResponse.fromJson(json);
}

/// @nodoc
class _$GrupResponseTearOff {
  const _$GrupResponseTearOff();

  _GrupResponse call(
      {int? currentPage,
      List<GrupModel>? data,
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
    return _GrupResponse(
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

  GrupResponse fromJson(Map<String, Object?> json) {
    return GrupResponse.fromJson(json);
  }
}

/// @nodoc
const $GrupResponse = _$GrupResponseTearOff();

/// @nodoc
mixin _$GrupResponse {
  int? get currentPage => throw _privateConstructorUsedError;
  List<GrupModel>? get data => throw _privateConstructorUsedError;
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
  $GrupResponseCopyWith<GrupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrupResponseCopyWith<$Res> {
  factory $GrupResponseCopyWith(
          GrupResponse value, $Res Function(GrupResponse) then) =
      _$GrupResponseCopyWithImpl<$Res>;
  $Res call(
      {int? currentPage,
      List<GrupModel>? data,
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
class _$GrupResponseCopyWithImpl<$Res> implements $GrupResponseCopyWith<$Res> {
  _$GrupResponseCopyWithImpl(this._value, this._then);

  final GrupResponse _value;
  // ignore: unused_field
  final $Res Function(GrupResponse) _then;

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
              as List<GrupModel>?,
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
abstract class _$GrupResponseCopyWith<$Res>
    implements $GrupResponseCopyWith<$Res> {
  factory _$GrupResponseCopyWith(
          _GrupResponse value, $Res Function(_GrupResponse) then) =
      __$GrupResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? currentPage,
      List<GrupModel>? data,
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
class __$GrupResponseCopyWithImpl<$Res> extends _$GrupResponseCopyWithImpl<$Res>
    implements _$GrupResponseCopyWith<$Res> {
  __$GrupResponseCopyWithImpl(
      _GrupResponse _value, $Res Function(_GrupResponse) _then)
      : super(_value, (v) => _then(v as _GrupResponse));

  @override
  _GrupResponse get _value => super._value as _GrupResponse;

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
    return _then(_GrupResponse(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GrupModel>?,
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
class _$_GrupResponse implements _GrupResponse {
  const _$_GrupResponse(
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

  factory _$_GrupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GrupResponseFromJson(json);

  @override
  final int? currentPage;
  @override
  final List<GrupModel>? data;
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
    return 'GrupResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GrupResponse &&
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
  _$GrupResponseCopyWith<_GrupResponse> get copyWith =>
      __$GrupResponseCopyWithImpl<_GrupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrupResponseToJson(this);
  }
}

abstract class _GrupResponse implements GrupResponse {
  const factory _GrupResponse(
      {int? currentPage,
      List<GrupModel>? data,
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
      int? total}) = _$_GrupResponse;

  factory _GrupResponse.fromJson(Map<String, dynamic> json) =
      _$_GrupResponse.fromJson;

  @override
  int? get currentPage;
  @override
  List<GrupModel>? get data;
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
  _$GrupResponseCopyWith<_GrupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GrupModel _$GrupModelFromJson(Map<String, dynamic> json) {
  return _GrupModel.fromJson(json);
}

/// @nodoc
class _$GrupModelTearOff {
  const _$GrupModelTearOff();

  _GrupModel call(
      {String? kodeGrup, String? namaGrup, int? flagHapus, String? icon}) {
    return _GrupModel(
      kodeGrup: kodeGrup,
      namaGrup: namaGrup,
      flagHapus: flagHapus,
      icon: icon,
    );
  }

  GrupModel fromJson(Map<String, Object?> json) {
    return GrupModel.fromJson(json);
  }
}

/// @nodoc
const $GrupModel = _$GrupModelTearOff();

/// @nodoc
mixin _$GrupModel {
  String? get kodeGrup => throw _privateConstructorUsedError;
  String? get namaGrup => throw _privateConstructorUsedError;
  int? get flagHapus => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrupModelCopyWith<GrupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrupModelCopyWith<$Res> {
  factory $GrupModelCopyWith(GrupModel value, $Res Function(GrupModel) then) =
      _$GrupModelCopyWithImpl<$Res>;
  $Res call({String? kodeGrup, String? namaGrup, int? flagHapus, String? icon});
}

/// @nodoc
class _$GrupModelCopyWithImpl<$Res> implements $GrupModelCopyWith<$Res> {
  _$GrupModelCopyWithImpl(this._value, this._then);

  final GrupModel _value;
  // ignore: unused_field
  final $Res Function(GrupModel) _then;

  @override
  $Res call({
    Object? kodeGrup = freezed,
    Object? namaGrup = freezed,
    Object? flagHapus = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      kodeGrup: kodeGrup == freezed
          ? _value.kodeGrup
          : kodeGrup // ignore: cast_nullable_to_non_nullable
              as String?,
      namaGrup: namaGrup == freezed
          ? _value.namaGrup
          : namaGrup // ignore: cast_nullable_to_non_nullable
              as String?,
      flagHapus: flagHapus == freezed
          ? _value.flagHapus
          : flagHapus // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GrupModelCopyWith<$Res> implements $GrupModelCopyWith<$Res> {
  factory _$GrupModelCopyWith(
          _GrupModel value, $Res Function(_GrupModel) then) =
      __$GrupModelCopyWithImpl<$Res>;
  @override
  $Res call({String? kodeGrup, String? namaGrup, int? flagHapus, String? icon});
}

/// @nodoc
class __$GrupModelCopyWithImpl<$Res> extends _$GrupModelCopyWithImpl<$Res>
    implements _$GrupModelCopyWith<$Res> {
  __$GrupModelCopyWithImpl(_GrupModel _value, $Res Function(_GrupModel) _then)
      : super(_value, (v) => _then(v as _GrupModel));

  @override
  _GrupModel get _value => super._value as _GrupModel;

  @override
  $Res call({
    Object? kodeGrup = freezed,
    Object? namaGrup = freezed,
    Object? flagHapus = freezed,
    Object? icon = freezed,
  }) {
    return _then(_GrupModel(
      kodeGrup: kodeGrup == freezed
          ? _value.kodeGrup
          : kodeGrup // ignore: cast_nullable_to_non_nullable
              as String?,
      namaGrup: namaGrup == freezed
          ? _value.namaGrup
          : namaGrup // ignore: cast_nullable_to_non_nullable
              as String?,
      flagHapus: flagHapus == freezed
          ? _value.flagHapus
          : flagHapus // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrupModel extends _GrupModel {
  const _$_GrupModel({this.kodeGrup, this.namaGrup, this.flagHapus, this.icon})
      : super._();

  factory _$_GrupModel.fromJson(Map<String, dynamic> json) =>
      _$$_GrupModelFromJson(json);

  @override
  final String? kodeGrup;
  @override
  final String? namaGrup;
  @override
  final int? flagHapus;
  @override
  final String? icon;

  @override
  String toString() {
    return 'GrupModel(kodeGrup: $kodeGrup, namaGrup: $namaGrup, flagHapus: $flagHapus, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GrupModel &&
            const DeepCollectionEquality().equals(other.kodeGrup, kodeGrup) &&
            const DeepCollectionEquality().equals(other.namaGrup, namaGrup) &&
            const DeepCollectionEquality().equals(other.flagHapus, flagHapus) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kodeGrup),
      const DeepCollectionEquality().hash(namaGrup),
      const DeepCollectionEquality().hash(flagHapus),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$GrupModelCopyWith<_GrupModel> get copyWith =>
      __$GrupModelCopyWithImpl<_GrupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrupModelToJson(this);
  }
}

abstract class _GrupModel extends GrupModel {
  const factory _GrupModel(
      {String? kodeGrup,
      String? namaGrup,
      int? flagHapus,
      String? icon}) = _$_GrupModel;
  const _GrupModel._() : super._();

  factory _GrupModel.fromJson(Map<String, dynamic> json) =
      _$_GrupModel.fromJson;

  @override
  String? get kodeGrup;
  @override
  String? get namaGrup;
  @override
  int? get flagHapus;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$GrupModelCopyWith<_GrupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
