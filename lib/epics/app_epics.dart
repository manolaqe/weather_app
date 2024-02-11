import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/app_action.dart';
import '../actions/get_air_pollution_data.dart';
import '../actions/get_coordinates.dart';
import '../actions/get_current_weather.dart';
import '../actions/get_forecast.dart';
import '../actions/get_location.dart';
import '../api/location_api.dart';
import '../api/open_weather_api.dart';
import '../models/air_pollution_data.dart';
import '../models/app_state.dart';
import '../models/current_weather.dart';
import '../models/forecast_weather.dart';
import '../models/location_data.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.api, this.locationApi);

  final OpenWeatherApi api;
  final LocationApi locationApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocationStart).call,
      TypedEpic<AppState, GetCurrentWeatherStart>(_getCurrentWeatherStart).call,
      TypedEpic<AppState, GetForecastStart>(_getForecastStart).call,
      TypedEpic<AppState, GetAirPollutionDataStart>(_getAirPollutionDataStart)
          .call,
      TypedEpic<AppState, GetCoordinatesStart>(_getCoordinatesStart).call
    ])(actions, store);
  }

  Stream<AppAction> _getCurrentWeatherStart(
      Stream<GetCurrentWeatherStart> actions, EpicStore<AppState> store) {
    return actions
        .debounceTime(const Duration(milliseconds: 1000))
        .flatMap((GetCurrentWeatherStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => api.getCurrentWeather(
              locationData: store.state.locationData,
              imperialUnits: store.state.imperialUnits))
          .map(
              (CurrentWeather weather) => GetCurrentWeather.successful(weather))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              GetCurrentWeather.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getLocationStart(
      Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetLocationStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => locationApi.getLocation())
          .map((LocationData? locationData) =>
              GetLocation.successful(locationData!))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              GetLocation.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getForecastStart(
      Stream<GetForecastStart> actions, EpicStore<AppState> store) {
    return actions
        .debounceTime(const Duration(milliseconds: 1000))
        .flatMap((GetForecastStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => api.getWeatherForecast(
              locationData: store.state.locationData,
              imperialUnits: store.state.imperialUnits))
          .map((ForecastWeather forecast) => GetForecast.successful(forecast))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              GetForecast.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getAirPollutionDataStart(
      Stream<GetAirPollutionDataStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetAirPollutionDataStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) =>
              api.getAirPollutionData(locationData: store.state.locationData))
          .map((AirPollutionData airPollutionData) =>
              GetAirPollutionData.successful(airPollutionData))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              GetAirPollutionData.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getCoordinatesStart(
      Stream<GetCoordinatesStart> actions, EpicStore<AppState> store) {
    return actions
        .debounceTime(const Duration(milliseconds: 1000))
        .flatMap((GetCoordinatesStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => api.getCoordinates(name: action.query))
          .map((LocationData? locationData) =>
              GetCoordinates.successful(locationData!))
          .onErrorReturnWith((Object error, StackTrace stackTrace) =>
              GetCoordinates.error(error, stackTrace));
    });
  }
}
