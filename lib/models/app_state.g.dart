// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) =>
    _$AppState$Impl(
      locationData: json['locationData'] == null
          ? const LocationData(lat: 44.4268, lon: 26.1025)
          : LocationData.fromJson(json['locationData'] as Map<String, dynamic>),
      currentWeather: json['currentWeather'] == null
          ? const CurrentWeather(
              coord: Coord(),
              main: Main(),
              wind: Wind(),
              clouds: Clouds(),
              sys: Sys())
          : CurrentWeather.fromJson(
              json['currentWeather'] as Map<String, dynamic>),
      forecastWeather: json['forecastWeather'] == null
          ? const ForecastWeather(city: City(coord: Coord()))
          : ForecastWeather.fromJson(
              json['forecastWeather'] as Map<String, dynamic>),
      airPollutionData: json['airPollutionData'] == null
          ? const AirPollutionData(coord: Coord())
          : AirPollutionData.fromJson(
              json['airPollutionData'] as Map<String, dynamic>),
      isLoadingAirPollution: json['isLoadingAirPollution'] as bool? ?? false,
      isLoadingCurrentWeather:
          json['isLoadingCurrentWeather'] as bool? ?? false,
      isLoadingForecastWeather:
          json['isLoadingForecastWeather'] as bool? ?? false,
      imperialUnits: json['imperialUnits'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'locationData': instance.locationData,
      'currentWeather': instance.currentWeather,
      'forecastWeather': instance.forecastWeather,
      'airPollutionData': instance.airPollutionData,
      'isLoadingAirPollution': instance.isLoadingAirPollution,
      'isLoadingCurrentWeather': instance.isLoadingCurrentWeather,
      'isLoadingForecastWeather': instance.isLoadingForecastWeather,
      'imperialUnits': instance.imperialUnits,
    };
