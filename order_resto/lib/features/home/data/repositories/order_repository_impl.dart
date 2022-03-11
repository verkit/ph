import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/state/data_state.dart';
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
  Future<DataState<List<CustomerEntity>>> getCustomers(RequestParams params) async {
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
        return DataSuccess(entity);
      }

      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      debugPrint(e.toString());
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<FoodEntity>>> getFoods(FoodRequestParams params) async {
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
        return DataSuccess(entity);
      }

      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      debugPrint(e.toString());
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<GroupEntity>>> getGroups(RequestParams params) async {
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
        return DataSuccess(entity);
      }

      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      debugPrint(e.toString());
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<SalesEntity>>> getSalesses(RequestParams params) async {
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
        return DataSuccess(entity);
      }

      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      debugPrint(e.toString());
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<PostResponse>> sendOrder(OrderEntity orders) async {
    try {
      final httpResponse = await _apiDio.sendOrder(orders.toListModel());

      if (httpResponse.statusCode == HttpStatus.ok) {
        return DataSuccess(PostResponse.fromJson(httpResponse.data));
      }

      return DataFailed(
        DioError(
          error: httpResponse.statusMessage,
          response: httpResponse,
          requestOptions: httpResponse.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }

  // Lokal database
  @override
  Future<List<CartEntity>> getCarts() async {
    return _localDataSource.getCarts();
  }

  // @override
  // Future<void> removeItemCart(CartEntity cart) async {
  //   return _localDataSource.removeItemCart(cart);
  // }

  @override
  Future<void> removeAllItemCart() {
    return _localDataSource.removeAllCart();
  }

  // @override
  // Future<void> saveItemCart(CartEntity cart) {
  //   return _localDataSource.insertCart(cart);
  // }

  @override
  Future<void> saveItemCart(List<CartEntity> carts) async {
    return _localDataSource.insertCart(carts);
  }
}
