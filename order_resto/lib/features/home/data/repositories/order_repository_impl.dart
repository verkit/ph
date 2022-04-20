import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/src/platform_file.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/local_data_state.dart';
import 'package:order_resto/core/state/remote_data_state.dart';
import 'package:order_resto/features/home/data/datasources/local/local_data_source.dart';
import 'package:order_resto/features/home/data/datasources/remote/api_dio.dart';
import 'package:order_resto/features/home/data/datasources/remote/api_service.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/entities/customer_entity.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';
import 'package:order_resto/features/home/domain/entities/order_entity.dart';
import 'package:order_resto/features/home/domain/entities/sales_entity.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@LazySingleton(as: OrderRepository)
class OrderRepositoryImpl extends OrderRepository {
  final LocalDataSource _localDataSource;
  final ApiService _apiService;
  final ApiDio _apiDio;

  OrderRepositoryImpl(this._localDataSource, this._apiService, this._apiDio);

  // Remote database / API
  @override
  Future<RemoteDataState<List<CustomerEntity>>> getCustomers(RequestParams params) async {
    try {
      final httpResponse = await _apiService.getCustomers(
        limit: params.limit,
        page: params.page,
        query: params.query,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<CustomerEntity> entity = [];
        if (httpResponse.data.data != null) {
          for (var item in httpResponse.data.data!) {
            entity.add(item.toEntity());
          }
        }
        return RemoteDataSuccess(entity);
      }

      return RemoteDataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      // debugPrint(e.toString());
      return RemoteDataFailed(e);
    }
  }

  @override
  Future<RemoteDataState<List<FoodEntity>>> getFoods(FoodRequestParams params) async {
    try {
      final httpResponse = await _apiService.getFoods(
        limit: params.limit,
        page: params.page,
        query: params.query,
        group: params.group,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<FoodEntity> entity = [];
        if (httpResponse.data.data != null) {
          for (var item in httpResponse.data.data!) {
            entity.add(item.toEntity());
          }
        }
        return RemoteDataSuccess(entity);
      }

      return RemoteDataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      // debugPrint(e.toString());
      return RemoteDataFailed(e);
    }
  }

  @override
  Future<RemoteDataState<List<GroupEntity>>> getGroups(RequestParams params) async {
    try {
      final httpResponse = await _apiService.getGroups(
        limit: params.limit,
        page: params.page,
        query: params.query,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<GroupEntity> entity = [];
        if (httpResponse.data.data != null) {
          for (var item in httpResponse.data.data!) {
            entity.add(item.toEntity());
          }
        }
        entity.sort((a, b) => a.kode.compareTo(b.kode));
        return RemoteDataSuccess(entity);
      }

      return RemoteDataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      // debugPrint(e.toString());
      return RemoteDataFailed(e);
    }
  }

  @override
  Future<RemoteDataState<List<SalesEntity>>> getSalesses(RequestParams params) async {
    try {
      final httpResponse = await _apiService.getSales(
        limit: params.limit,
        page: params.page,
        query: params.query,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        List<SalesEntity> entity = [];
        if (httpResponse.data.data != null) {
          for (var item in httpResponse.data.data!) {
            entity.add(item.toEntity());
          }
        }
        return RemoteDataSuccess(entity);
      }

      return RemoteDataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      // debugPrint(e.toString());
      return RemoteDataFailed(e);
    }
  }

  @override
  Future<RemoteDataState<PostResponse>> sendOrder(OrderEntity orders) async {
    try {
      final httpResponse = await _apiDio.sendOrder(orders.toListModel());

      if (httpResponse.statusCode == HttpStatus.ok) {
        return RemoteDataSuccess(PostResponse.fromJson(httpResponse.data));
      }

      return RemoteDataFailed(
        DioError(
          error: httpResponse.statusMessage,
          response: httpResponse,
          requestOptions: httpResponse.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      return RemoteDataFailed(e);
    }
  }

  // Lokal database
  @override
  Future<LocalDataState<List<CartEntity>>> getCarts() async {
    try {
      var carts = await _localDataSource.getCarts();
      return LocalDataSuccess(carts);
    } on HiveError catch (e) {
      return LocalDataFailed(e);
    }
  }

  // @override
  // Future<void> removeItemCart(CartEntity cart) async {
  //   return _localDataSource.removeItemCart(cart);
  // }

  @override
  Future<LocalDataState<void>> removeAllItemCart() async {
    try {
      return LocalDataSuccess(_localDataSource.removeAllCart());
    } on HiveError catch (e) {
      return LocalDataFailed(e);
    }
  }

  // @override
  // Future<void> saveItemCart(CartEntity cart) {
  //   return _localDataSource.insertCart(cart);
  // }

  @override
  Future<LocalDataState<void>> saveItemCart(List<CartEntity> carts) async {
    try {
      return LocalDataSuccess(_localDataSource.insertCart(carts));
    } on HiveError catch (e) {
      return LocalDataFailed(e);
    }
  }

  @override
  Future<RemoteDataState<PostResponse>> uploadImage(PlatformFile image, int id) async {
    try {
      final httpResponse = await _apiDio.uploadImage(image, id);

      if (httpResponse.statusCode == HttpStatus.ok) {
        return RemoteDataSuccess(PostResponse.fromJson(httpResponse.data));
      }

      return RemoteDataFailed(
        DioError(
          error: httpResponse.statusMessage,
          response: httpResponse,
          requestOptions: httpResponse.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      return RemoteDataFailed(e);
    }
  }
}
