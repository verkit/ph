// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/datasources/local/local_data_source.dart'
    as _i4;
import '../../features/home/data/datasources/remote/api_dio.dart' as _i6;
import '../../features/home/data/datasources/remote/api_service.dart' as _i7;
import '../../features/home/data/repositories/order_repository_impl.dart'
    as _i9;
import '../../features/home/domain/repositories/order_repository.dart' as _i8;
import '../../features/home/domain/usecases/get_carts.dart' as _i12;
import '../../features/home/domain/usecases/get_customers.dart' as _i13;
import '../../features/home/domain/usecases/get_foods.dart' as _i14;
import '../../features/home/domain/usecases/get_grups.dart' as _i15;
import '../../features/home/domain/usecases/get_sales.dart' as _i16;
import '../../features/home/domain/usecases/insert_cart.dart' as _i18;
import '../../features/home/domain/usecases/remove_all_cart.dart' as _i10;
import '../../features/home/domain/usecases/send_orders.dart' as _i11;
import '../../features/home/presentation/cubit/cart/cart_cubit.dart' as _i19;
import '../../features/home/presentation/cubit/home/home_cubit.dart' as _i17;
import '../module/app_module.dart' as _i20;
import '../navigation/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.LocalDataSource>(() => _i4.LocalDataSourceImpl());
  gh.factory<String>(() => appModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i5.Dio>(
      () => appModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i6.ApiDio>(() => _i6.ApiDioImpl(get<_i5.Dio>()));
  gh.lazySingleton<_i7.ApiService>(() => _i7.ApiService(get<_i5.Dio>(),
      baseUrl: get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i8.OrderRepository>(() => _i9.OrderRepositoryImpl(
      get<_i4.LocalDataSource>(), get<_i7.ApiService>(), get<_i6.ApiDio>()));
  gh.lazySingleton<_i10.RemoveAllCart>(
      () => _i10.RemoveAllCart(get<_i8.OrderRepository>()));
  gh.lazySingleton<_i11.SendOrder>(
      () => _i11.SendOrder(get<_i8.OrderRepository>()));
  gh.lazySingleton<_i12.GetCarts>(
      () => _i12.GetCarts(get<_i8.OrderRepository>()));
  gh.lazySingleton<_i13.GetCustomers>(
      () => _i13.GetCustomers(get<_i8.OrderRepository>()));
  gh.lazySingleton<_i14.GetFoods>(
      () => _i14.GetFoods(get<_i8.OrderRepository>()));
  gh.lazySingleton<_i15.GetGrups>(
      () => _i15.GetGrups(get<_i8.OrderRepository>()));
  gh.lazySingleton<_i16.GetSalesses>(
      () => _i16.GetSalesses(get<_i8.OrderRepository>()));
  gh.factory<_i17.HomeCubit>(() => _i17.HomeCubit(
      get<_i15.GetGrups>(), get<_i14.GetFoods>(), get<_i13.GetCustomers>()));
  gh.lazySingleton<_i18.InsertCart>(
      () => _i18.InsertCart(get<_i8.OrderRepository>()));
  gh.factory<_i19.CartCubit>(() => _i19.CartCubit(
      get<_i12.GetCarts>(),
      get<_i18.InsertCart>(),
      get<_i10.RemoveAllCart>(),
      get<_i11.SendOrder>()));
  return get;
}

class _$AppModule extends _i20.AppModule {}
