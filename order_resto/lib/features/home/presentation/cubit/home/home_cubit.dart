import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/utils/app_state.dart';
import 'package:order_resto/features/home/domain/entities/customer_entity.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/entities/group_entity.dart';
import 'package:order_resto/features/home/domain/usecases/get_customers.dart';
import 'package:order_resto/features/home/domain/usecases/get_foods.dart';
import 'package:order_resto/features/home/domain/usecases/get_grups.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetGrups _getGrups;
  final GetFoods _getFoods;
  final GetCustomers _getCustomers;
  HomeCubit(this._getGrups, this._getFoods, this._getCustomers)
      : super(const HomeState(isDrawerOpen: false, status: AppState.idle));

  openDrawer() {
    emit(state.copyWith(
      isDrawerOpen: true,
    ));
  }

  closeDrawer() {
    emit(state.copyWith(
      isDrawerOpen: false,
    ));
  }

  loadData() async {
    emit(state.copyWith(status: AppState.progress));
    var groups = await _getGrups(const RequestParams());
    var foods = await _getFoods(const FoodRequestParams());
    var customers = await _getCustomers(const RequestParams());

    emit(state.copyWith(
      status: AppState.success,
      groups: groups.data,
      foods: foods.data,
      customers: customers.data,
    ));
  }

  searchQuery(String query) async {
    // emit(state.copyWith(status: AppState.progress));
    var foods = await _getFoods(FoodRequestParams(query: query));
    emit(state.copyWith(
      status: AppState.success,
      foods: foods.data,
    ));
  }

  searchFilter(String filter) async {
    // emit(state.copyWith(status: AppState.progress));
    var foods = await _getFoods(FoodRequestParams(group: filter));
    emit(state.copyWith(
      status: AppState.success,
      foods: foods.data,
    ));
  }

  clearFilter() async {
    // emit(state.copyWith(status: AppState.progress));
    var foods = await _getFoods(const FoodRequestParams());
    emit(state.copyWith(
      status: AppState.success,
      foods: foods.data,
    ));
  }

  selectGroup(GroupEntity group) async {
    // emit(state.copyWith(status: AppState.progress));

    if (group == state.selectedGroup) {
      var foods = await _getFoods(const FoodRequestParams());
      return emit(state.copyWith(
        status: AppState.success,
        selectedGroup: null,
        foods: foods.data,
      ));
    } else {
      var foods = await _getFoods(FoodRequestParams(group: '${group.kode}-${group.name}'));
      return emit(state.copyWith(
        status: AppState.success,
        selectedGroup: group,
        foods: foods.data,
      ));
    }
  }
}
