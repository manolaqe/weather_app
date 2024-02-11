// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Sys$Impl _$$Sys$ImplFromJson(Map<String, dynamic> json) => _$Sys$Impl(
      type: json['type'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      country: json['country'] as String? ?? '',
      sunrise: json['sunrise'] as int? ?? 0,
      sunset: json['sunset'] as int? ?? 0,
    );

Map<String, dynamic> _$$Sys$ImplToJson(_$Sys$Impl instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
