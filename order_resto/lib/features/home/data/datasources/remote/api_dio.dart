import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/features/home/data/models/order_model.dart';

abstract class ApiDio {
  Future<Response> sendOrder(List<OrderModel> orders);
  Future<Response> uploadImage(PlatformFile image, int id);
}

@LazySingleton(as: ApiDio)
class ApiDioImpl implements ApiDio {
  final Dio _dio;
  ApiDioImpl(this._dio);

  @override
  Future<Response> sendOrder(List<OrderModel> orders) async {
    Map<String, dynamic> newMap = {};

    for (var i = 0; i < orders.length; i++) {
      // TODO: Tambahkan juga disini data baru
      newMap['kode_sales[$i]'] = orders[i].kodeSales;
      newMap['nama_sales[$i]'] = orders[i].namaSales;
      // newMap['kode_pelanggan[$i]'] = orders[i].kodePelanggan;
      // newMap['nama_pelanggan[$i]'] = orders[i].namaPelanggan;
      newMap['kode_barang[$i]'] = orders[i].kodeBarang;
      newMap['nama_barang[$i]'] = orders[i].namaBarang;
      newMap['quantity[$i]'] = orders[i].qty;
      newMap['satuan[$i]'] = orders[i].satuan;
      newMap['harga[$i]'] = orders[i].harga;
      newMap['condiman[$i]'] = orders[i].condiman ?? '';
      newMap['latlong[$i]'] = orders[i].latlong;
      newMap['grup[$i]'] = orders[i].grup;
      newMap['hp[$i]'] = orders[i].hp;
    }

    print(newMap);
    var formData = FormData.fromMap(newMap);
    var response = await _dio.post(
      'http://103.31.38.189:81/order',
      data: formData,
    );
    return response;
  }

  @override
  Future<Response> uploadImage(PlatformFile image, int id) async {
    var formData = FormData.fromMap({
      'gambar': MultipartFile.fromBytes(image.bytes!, filename: image.name),
    });
    var response = await _dio.post(
      'http://103.31.38.189:81/upload/$id',
      data: formData,
    );
    return response;
  }
}
