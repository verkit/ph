import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/core/state/remote_data_state.dart';
import 'package:order_resto/features/home/data/models/response.dart';
import 'package:order_resto/features/home/domain/repositories/order_repository.dart';

@lazySingleton
class UploadImage {
  final OrderRepository _orderRepository;
  UploadImage(this._orderRepository);

  Future<RemoteDataState<PostResponse>> execute(PlatformFile image, int id) {
    return _orderRepository.uploadImage(image, id);
  }
}
