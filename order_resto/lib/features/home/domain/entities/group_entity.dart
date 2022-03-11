import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_entity.freezed.dart';

@freezed
class GroupEntity with _$GroupEntity {
  const GroupEntity._();
  const factory GroupEntity({
    required String name,
    required String icon,
    required String kode,
    @Default(false) bool selected,
  }) = _GroupEntity;
}
