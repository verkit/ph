// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/datasources/local/auth_data_source.dart'
    as _i4;
import '../../features/home/data/datasources/local/local_data_source.dart'
    as _i8;
import '../../features/home/data/datasources/remote/api_dio.dart' as _i13;
import '../../features/home/data/datasources/remote/api_service.dart' as _i14;
import '../../features/home/data/repositories/auth_repository_impl.dart' as _i6;
import '../../features/home/data/repositories/order_repository_impl.dart'
    as _i16;
import '../../features/home/domain/repositories/auth_repository.dart' as _i5;
import '../../features/home/domain/repositories/order_repository.dart' as _i15;
import '../../features/home/domain/usecases/auth/check_loggedin.dart' as _i7;
import '../../features/home/domain/usecases/auth/signin.dart' as _i9;
import '../../features/home/domain/usecases/auth/signout.dart' as _i10;
import '../../features/home/domain/usecases/get_carts.dart' as _i19;
import '../../features/home/domain/usecases/get_customers.dart' as _i20;
import '../../features/home/domain/usecases/get_foods.dart' as _i21;
import '../../features/home/domain/usecases/get_grups.dart' as _i22;
import '../../features/home/domain/usecases/get_sales.dart' as _i23;
import '../../features/home/domain/usecases/insert_cart.dart' as _i25;
import '../../features/home/domain/usecases/remove_all_cart.dart' as _i17;
import '../../features/home/domain/usecases/send_orders.dart' as _i18;
import '../../features/home/presentation/bloc/app/app_bloc.dart' as _i11;
import '../../features/home/presentation/bloc/cart/cart_cubit.dart' as _i26;
import '../../features/home/presentation/bloc/dashboard/dashboard_bloc.dart'
    as _i27;
import '../../features/home/presentation/bloc/home/home_cubit.dart' as _i24;
import '../module/app_module.dart' as _i28;
import '../navigation/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.AuthDataSource>(() => _i4.AuthDataSourceImpl());
  gh.lazySingleton<_i5.AuthRepository>(
      () => _i6.AuthRepositoryImpl(get<_i4.AuthDataSource>()));
  gh.lazySingleton<_i7.CheckLoggedIn>(
      () => _i7.CheckLoggedIn(get<_i5.AuthRepository>()));
  gh.lazySingleton<_i8.LocalDataSource>(() => _i8.LocalDataSourceImpl());
  gh.lazySingleton<_i9.SignIn>(() => _i9.SignIn(get<_i5.AuthRepository>()));
  gh.lazySingleton<_i10.SignOut>(() => _i10.SignOut(get<_i5.AuthRepository>()));
  gh.factory<String>(() => appModule.baseUrl, instanceName: 'BaseUrl');
  gh.factory<_i11.AppBloc>(() => _i11.AppBloc(
      get<_i9.SignIn>(), get<_i10.SignOut>(), get<_i7.CheckLoggedIn>()));
  gh.lazySingleton<_i12.Dio>(
      () => appModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i13.ApiDio>(() => _i13.ApiDioImpl(get<_i12.Dio>()));
  gh.lazySingleton<_i14.ApiService>(() => _i14.ApiService(get<_i12.Dio>(),
      baseUrl: get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i15.OrderRepository>(() => _i16.OrderRepositoryImpl(
      get<_i8.LocalDataSource>(), get<_i14.ApiService>(), get<_i13.ApiDio>()));
  gh.lazySingleton<_i17.RemoveAllCart>(
      () => _i17.RemoveAllCart(get<_i15.OrderRepository>()));
  gh.lazySingleton<_i18.SendOrder>(
      () => _i18.SendOrder(get<_i15.OrderRepository>()));
  gh.lazySingleton<_i19.GetCarts>(
      () => _i19.GetCarts(get<_i15.OrderRepository>()));
  gh.lazySingleton<_i20.GetCustomers>(
      () => _i20.GetCustomers(get<_i15.OrderRepository>()));
  gh.lazySingleton<_i21.GetFoods>(
      () => _i21.GetFoods(get<_i15.OrderRepository>()));
  gh.lazySingleton<_i22.GetGrups>(
      () => _i22.GetGrups(get<_i15.OrderRepository>()));
  gh.lazySingleton<_i23.GetSalesses>(
      () => _i23.GetSalesses(get<_i15.OrderRepository>()));
  gh.factory<_i24.HomeCubit>(() => _i24.HomeCubit(
      get<_i22.GetGrups>(), get<_i21.GetFoods>(), get<_i20.GetCustomers>()));
  gh.lazySingleton<_i25.InsertCart>(
      () => _i25.InsertCart(get<_i15.OrderRepository>()));
  gh.factory<_i26.CartCubit>(() => _i26.CartCubit(
      get<_i19.GetCarts>(),
      get<_i25.InsertCart>(),
      get<_i17.RemoveAllCart>(),
      get<_i18.SendOrder>()));
  gh.factory<_i27.DashboardBloc>(
      () => _i27.DashboardBloc(get<_i21.GetFoods>()));
  return get;
}

class _$AppModule extends _i28.AppModule {}
