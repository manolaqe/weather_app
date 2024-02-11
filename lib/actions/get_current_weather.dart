import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/current_weather.dart';
import 'app_action.dart';

part 'get_current_weather.freezed.dart';

@freezed
class GetCurrentWeather with _$GetCurrentWeather implements AppAction {
  const factory GetCurrentWeather() = GetCurrentWeatherStart;

  const factory GetCurrentWeather.successful(CurrentWeather currentWeather) = GetCurrentWeatherSuccessful;

  @Implements<ErrorAction>()
  const factory GetCurrentWeather.error(Object error, StackTrace stackTrace) = GetCurrentWeatherError;
}
