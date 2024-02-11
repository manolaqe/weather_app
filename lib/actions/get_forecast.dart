import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/forecast_weather.dart';
import 'app_action.dart';

part 'get_forecast.freezed.dart';

@freezed
class GetForecast with _$GetForecast implements AppAction {
  const factory GetForecast() = GetForecastStart;

  const factory GetForecast.successful(ForecastWeather forecastWeather) =
      GetForecastSuccessful;

  @Implements<ErrorAction>()
  const factory GetForecast.error(Object error, StackTrace stackTrace) =
      GetForecastError;
}
