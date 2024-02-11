import 'package:freezed_annotation/freezed_annotation.dart';

import 'air_pollution_data.dart';
import 'city.dart';
import 'clouds.dart';
import 'coord.dart';
import 'current_weather.dart';
import 'forecast_weather.dart';
import 'location_data.dart';
import 'main.dart';
import 'sys.dart';
import 'wind.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(LocationData(lat: 44.4268, lon: 26.1025)) LocationData locationData,
    @Default(CurrentWeather(coord: Coord(), main: Main(), wind: Wind(), clouds: Clouds(), sys: Sys()))
    CurrentWeather currentWeather,
    @Default(ForecastWeather(city: City(coord: Coord()))) ForecastWeather forecastWeather,
    @Default(AirPollutionData(coord: Coord())) AirPollutionData airPollutionData,
    @Default(false) bool isLoadingAirPollution,
    @Default(false) bool isLoadingCurrentWeather,
    @Default(false) bool isLoadingForecastWeather,
    @Default(false) bool imperialUnits,
  }) = AppState$;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
