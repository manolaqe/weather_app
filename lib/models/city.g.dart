// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$City$Impl _$$City$ImplFromJson(Map<String, dynamic> json) => _$City$Impl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      country: json['country'] as String? ?? '',
      population: json['population'] as int? ?? 0,
      timezone: json['timezone'] as int? ?? 0,
      sunrise: json['sunrise'] as int? ?? 0,
      sunset: json['sunset'] as int? ?? 0,
    );

Map<String, dynamic> _$$City$ImplToJson(_$City$Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
