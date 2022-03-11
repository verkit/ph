import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    String? label,
    bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
class PostResponse with _$PostResponse {
  const factory PostResponse({
    required bool success,
    required String message,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) => _$PostResponseFromJson(json);
}

class DynamicIntConverter implements JsonConverter<int, dynamic> {
  const DynamicIntConverter();

  @override
  int fromJson(dynamic json) {
    if (json is int) {
      return json;
    }
    return int.parse(json.toString());
  }

  @override
  String toJson(int object) => object.toString();
}

class StringDoubleConverter implements JsonConverter<double, String> {
  const StringDoubleConverter();

  @override
  double fromJson(String json) => double.parse(json);

  @override
  String toJson(double object) => object.toString();
}
