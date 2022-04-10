part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isDrawerOpen,
    List<GroupEntity>? groups,
    List<FoodEntity>? foods,
    List<CustomerEntity>? customers,
    GroupEntity? selectedGroup,
    String? query,
    AppState? status,
  }) = _HomeState;
}
