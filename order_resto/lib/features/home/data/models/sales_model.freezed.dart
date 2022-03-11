// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesResponse _$SalesResponseFromJson(Map<String, dynamic> json) {
  return _SalesResponse.fromJson(json);
}

/// @nodoc
class _$SalesResponseTearOff {
  const _$SalesResponseTearOff();

  _SalesResponse call(
      {int? currentPage,
      List<SalesModel>? data,
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
    return _SalesResponse(
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

  SalesResponse fromJson(Map<String, Object?> json) {
    return SalesResponse.fromJson(json);
  }
}

/// @nodoc
const $SalesResponse = _$SalesResponseTearOff();

/// @nodoc
mixin _$SalesResponse {
  int? get currentPage => throw _privateConstructorUsedError;
  List<SalesModel>? get data => throw _privateConstructorUsedError;
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
  $SalesResponseCopyWith<SalesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesResponseCopyWith<$Res> {
  factory $SalesResponseCopyWith(
          SalesResponse value, $Res Function(SalesResponse) then) =
      _$SalesResponseCopyWithImpl<$Res>;
  $Res call(
      {int? currentPage,
      List<SalesModel>? data,
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
class _$SalesResponseCopyWithImpl<$Res>
    implements $SalesResponseCopyWith<$Res> {
  _$SalesResponseCopyWithImpl(this._value, this._then);

  final SalesResponse _value;
  // ignore: unused_field
  final $Res Function(SalesResponse) _then;

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
              as List<SalesModel>?,
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
abstract class _$SalesResponseCopyWith<$Res>
    implements $SalesResponseCopyWith<$Res> {
  factory _$SalesResponseCopyWith(
          _SalesResponse value, $Res Function(_SalesResponse) then) =
      __$SalesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? currentPage,
      List<SalesModel>? data,
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
class __$SalesResponseCopyWithImpl<$Res>
    extends _$SalesResponseCopyWithImpl<$Res>
    implements _$SalesResponseCopyWith<$Res> {
  __$SalesResponseCopyWithImpl(
      _SalesResponse _value, $Res Function(_SalesResponse) _then)
      : super(_value, (v) => _then(v as _SalesResponse));

  @override
  _SalesResponse get _value => super._value as _SalesResponse;

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
    return _then(_SalesResponse(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SalesModel>?,
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
class _$_SalesResponse implements _SalesResponse {
  const _$_SalesResponse(
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

  factory _$_SalesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SalesResponseFromJson(json);

  @override
  final int? currentPage;
  @override
  final List<SalesModel>? data;
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
    return 'SalesResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesResponse &&
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
  _$SalesResponseCopyWith<_SalesResponse> get copyWith =>
      __$SalesResponseCopyWithImpl<_SalesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesResponseToJson(this);
  }
}

abstract class _SalesResponse implements SalesResponse {
  const factory _SalesResponse(
      {int? currentPage,
      List<SalesModel>? data,
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
      int? total}) = _$_SalesResponse;

  factory _SalesResponse.fromJson(Map<String, dynamic> json) =
      _$_SalesResponse.fromJson;

  @override
  int? get currentPage;
  @override
  List<SalesModel>? get data;
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
  _$SalesResponseCopyWith<_SalesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesModel _$SalesModelFromJson(Map<String, dynamic> json) {
  return _SalesModel.fromJson(json);
}

/// @nodoc
class _$SalesModelTearOff {
  const _$SalesModelTearOff();

  _SalesModel call(
      {String? kodeSales,
      String? namaSales,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? tipe,
      String? area}) {
    return _SalesModel(
      kodeSales: kodeSales,
      namaSales: namaSales,
      alamat: alamat,
      kota: kota,
      kodePos: kodePos,
      telepon: telepon,
      hp: hp,
      tipe: tipe,
      area: area,
    );
  }

  SalesModel fromJson(Map<String, Object?> json) {
    return SalesModel.fromJson(json);
  }
}

/// @nodoc
const $SalesModel = _$SalesModelTearOff();

/// @nodoc
mixin _$SalesModel {
  String? get kodeSales => throw _privateConstructorUsedError;
  String? get namaSales => throw _privateConstructorUsedError;
  String? get alamat => throw _privateConstructorUsedError;
  String? get kota => throw _privateConstructorUsedError;
  String? get kodePos => throw _privateConstructorUsedError;
  String? get telepon => throw _privateConstructorUsedError;
  String? get hp => throw _privateConstructorUsedError;
  String? get tipe => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesModelCopyWith<SalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesModelCopyWith<$Res> {
  factory $SalesModelCopyWith(
          SalesModel value, $Res Function(SalesModel) then) =
      _$SalesModelCopyWithImpl<$Res>;
  $Res call(
      {String? kodeSales,
      String? namaSales,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? tipe,
      String? area});
}

/// @nodoc
class _$SalesModelCopyWithImpl<$Res> implements $SalesModelCopyWith<$Res> {
  _$SalesModelCopyWithImpl(this._value, this._then);

  final SalesModel _value;
  // ignore: unused_field
  final $Res Function(SalesModel) _then;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
    Object? alamat = freezed,
    Object? kota = freezed,
    Object? kodePos = freezed,
    Object? telepon = freezed,
    Object? hp = freezed,
    Object? tipe = freezed,
    Object? area = freezed,
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
      alamat: alamat == freezed
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: kota == freezed
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePos: kodePos == freezed
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      telepon: telepon == freezed
          ? _value.telepon
          : telepon // ignore: cast_nullable_to_non_nullable
              as String?,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: tipe == freezed
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SalesModelCopyWith<$Res> implements $SalesModelCopyWith<$Res> {
  factory _$SalesModelCopyWith(
          _SalesModel value, $Res Function(_SalesModel) then) =
      __$SalesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? kodeSales,
      String? namaSales,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? tipe,
      String? area});
}

/// @nodoc
class __$SalesModelCopyWithImpl<$Res> extends _$SalesModelCopyWithImpl<$Res>
    implements _$SalesModelCopyWith<$Res> {
  __$SalesModelCopyWithImpl(
      _SalesModel _value, $Res Function(_SalesModel) _then)
      : super(_value, (v) => _then(v as _SalesModel));

  @override
  _SalesModel get _value => super._value as _SalesModel;

  @override
  $Res call({
    Object? kodeSales = freezed,
    Object? namaSales = freezed,
    Object? alamat = freezed,
    Object? kota = freezed,
    Object? kodePos = freezed,
    Object? telepon = freezed,
    Object? hp = freezed,
    Object? tipe = freezed,
    Object? area = freezed,
  }) {
    return _then(_SalesModel(
      kodeSales: kodeSales == freezed
          ? _value.kodeSales
          : kodeSales // ignore: cast_nullable_to_non_nullable
              as String?,
      namaSales: namaSales == freezed
          ? _value.namaSales
          : namaSales // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: alamat == freezed
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      kota: kota == freezed
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePos: kodePos == freezed
          ? _value.kodePos
          : kodePos // ignore: cast_nullable_to_non_nullable
              as String?,
      telepon: telepon == freezed
          ? _value.telepon
          : telepon // ignore: cast_nullable_to_non_nullable
              as String?,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: tipe == freezed
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SalesModel extends _SalesModel {
  const _$_SalesModel(
      {this.kodeSales,
      this.namaSales,
      this.alamat,
      this.kota,
      this.kodePos,
      this.telepon,
      this.hp,
      this.tipe,
      this.area})
      : super._();

  factory _$_SalesModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesModelFromJson(json);

  @override
  final String? kodeSales;
  @override
  final String? namaSales;
  @override
  final String? alamat;
  @override
  final String? kota;
  @override
  final String? kodePos;
  @override
  final String? telepon;
  @override
  final String? hp;
  @override
  final String? tipe;
  @override
  final String? area;

  @override
  String toString() {
    return 'SalesModel(kodeSales: $kodeSales, namaSales: $namaSales, alamat: $alamat, kota: $kota, kodePos: $kodePos, telepon: $telepon, hp: $hp, tipe: $tipe, area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesModel &&
            const DeepCollectionEquality().equals(other.kodeSales, kodeSales) &&
            const DeepCollectionEquality().equals(other.namaSales, namaSales) &&
            const DeepCollectionEquality().equals(other.alamat, alamat) &&
            const DeepCollectionEquality().equals(other.kota, kota) &&
            const DeepCollectionEquality().equals(other.kodePos, kodePos) &&
            const DeepCollectionEquality().equals(other.telepon, telepon) &&
            const DeepCollectionEquality().equals(other.hp, hp) &&
            const DeepCollectionEquality().equals(other.tipe, tipe) &&
            const DeepCollectionEquality().equals(other.area, area));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kodeSales),
      const DeepCollectionEquality().hash(namaSales),
      const DeepCollectionEquality().hash(alamat),
      const DeepCollectionEquality().hash(kota),
      const DeepCollectionEquality().hash(kodePos),
      const DeepCollectionEquality().hash(telepon),
      const DeepCollectionEquality().hash(hp),
      const DeepCollectionEquality().hash(tipe),
      const DeepCollectionEquality().hash(area));

  @JsonKey(ignore: true)
  @override
  _$SalesModelCopyWith<_SalesModel> get copyWith =>
      __$SalesModelCopyWithImpl<_SalesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesModelToJson(this);
  }
}

abstract class _SalesModel extends SalesModel {
  const factory _SalesModel(
      {String? kodeSales,
      String? namaSales,
      String? alamat,
      String? kota,
      String? kodePos,
      String? telepon,
      String? hp,
      String? tipe,
      String? area}) = _$_SalesModel;
  const _SalesModel._() : super._();

  factory _SalesModel.fromJson(Map<String, dynamic> json) =
      _$_SalesModel.fromJson;

  @override
  String? get kodeSales;
  @override
  String? get namaSales;
  @override
  String? get alamat;
  @override
  String? get kota;
  @override
  String? get kodePos;
  @override
  String? get telepon;
  @override
  String? get hp;
  @override
  String? get tipe;
  @override
  String? get area;
  @override
  @JsonKey(ignore: true)
  _$SalesModelCopyWith<_SalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
