// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Link _$$_LinkFromJson(Map<String, dynamic> json) => _$_Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$_PostResponse _$$_PostResponseFromJson(Map<String, dynamic> json) =>
    _$_PostResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_PostResponseToJson(_$_PostResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
