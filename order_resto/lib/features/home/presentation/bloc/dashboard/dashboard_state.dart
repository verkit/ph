part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    List<FoodEntity>? foods,
    int? pageKey,
    bool? hasReachedMax,
    AppState? status,
  }) = _DashboardState;

  factory DashboardState.init() => const DashboardState(
        foods: <FoodEntity>[],
        hasReachedMax: false,
        pageKey: 1,
        status: AppState.idle,
      );
}
