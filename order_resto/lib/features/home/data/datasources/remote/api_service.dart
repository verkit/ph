import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/features/home/data/models/customer_model.dart';
import 'package:order_resto/features/home/data/models/food_model.dart';
import 'package:order_resto/features/home/data/models/group_model.dart';
import 'package:order_resto/features/home/data/models/sales_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@lazySingleton
@RestApi(baseUrl: 'http://localhost:8000/')
abstract class ApiService {
  @factoryMethod
  factory ApiService(Dio dio, {@Named('BaseUrl') String? baseUrl}) = _ApiService;

  @GET('/pelanggan')
  Future<HttpResponse<CustomerResponse>> getCustomers({
    @Query('query') String? query,
    @Query('limit') int? limit,
    @Query('page') int? page,
  });

  @GET('/food')
  Future<HttpResponse<FoodResponse>> getFoods({
    @Query('query') String? query,
    @Query('group') String? group,
    @Query('limit') int? limit,
    @Query('page') int? page,
  });

  @GET('/sales')
  Future<HttpResponse<SalesResponse>> getSales({
    @Query('query') String? query,
    @Query('limit') int? limit,
    @Query('page') int? page,
  });

  @GET('/grup')
  Future<HttpResponse<GrupResponse>> getGroups({
    @Query('query') String? query,
    @Query('limit') int? limit,
    @Query('page') int? page,
  });
}
