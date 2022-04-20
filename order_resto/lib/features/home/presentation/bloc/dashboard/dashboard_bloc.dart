import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/params/request_params.dart';
import 'package:order_resto/core/utils/app_state.dart';
import 'package:order_resto/features/home/data/models/food_model.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/domain/usecases/get_foods.dart';
import 'package:order_resto/features/home/domain/usecases/upload_image.dart';
import 'package:stream_transform/stream_transform.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetFoods _getFoods;
  final UploadImage _uploadImage;
  DashboardBloc(this._getFoods, this._uploadImage) : super(DashboardState.init()) {
    on<DashboardLoadDataEvent>(_load);
    on<DashboardClearDataEvent>(_clear);
    on<DashboardUploadImageEvent>(_upload);
  }

  Future<void> _load(DashboardLoadDataEvent event, Emitter<DashboardState> emit) async {
    if (state.hasReachedMax!) return;
    try {
      if (event.idle != null && event.idle!) {
        emit(DashboardState.init());
      }

      if (state.status == AppState.idle) {
        final foods = await _getFoods.call(FoodRequestParams(query: event.query));
        return emit(state.copyWith(
          status: AppState.success,
          foods: foods.data,
          hasReachedMax: false,
          pageKey: state.pageKey! + 1,
        ));
      }
      final foods = await _getFoods.call(FoodRequestParams(query: event.query, page: state.pageKey!));
      emit(foods.data!.isEmpty
          ? state.copyWith(hasReachedMax: true)
          : state.copyWith(
              status: AppState.success,
              foods: List.of(state.foods!)..addAll(foods.data!),
              hasReachedMax: false,
              pageKey: state.pageKey! + 1,
            ));
    } catch (_) {
      emit(state.copyWith(status: AppState.failure));
    }
  }

  Future<void> _clear(DashboardClearDataEvent event, Emitter<DashboardState> emit) async {
    emit(DashboardState.init());
    add(const DashboardLoadDataEvent());
  }

  Future<void> _upload(DashboardUploadImageEvent event, Emitter<DashboardState> emit) async {
    EasyLoading.show();
    var _upload = await _uploadImage.execute(event.image, event.id);

    EasyLoading.dismiss();
    emit(state.copyWith(
        foods: state.foods!
            .map((food) => food.idtab == event.id ? FoodModel.fromJson(_upload.data!.data!).toEntity() : food)
            .toList()));
  }
}
