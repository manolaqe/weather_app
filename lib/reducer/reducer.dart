import 'package:redux/redux.dart';
import '../actions/get_air_pollution_data.dart';
import '../actions/get_coordinates.dart';
import '../actions/get_current_weather.dart';
import '../actions/get_forecast.dart';
import '../actions/get_location.dart';
import '../actions/set_imperial_units.dart';
import '../actions/set_location.dart';

import '../models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  return combineReducers<AppState>(<Reducer<AppState>>[
    TypedReducer<AppState, GetCurrentWeatherStart>(_getCurrentWeatherStart).call,
    TypedReducer<AppState, GetCurrentWeatherSuccessful>(_getCurrentWeatherSuccessful).call,
    TypedReducer<AppState, GetCurrentWeatherError>(_getCurrentWeatherError).call,
    TypedReducer<AppState, GetForecastStart>(_getForecastStart).call,
    TypedReducer<AppState, GetForecastSuccessful>(_getForecastSuccessful).call,
    TypedReducer<AppState, GetForecastError>(_getForecastError).call,
    TypedReducer<AppState, GetAirPollutionDataStart>(_getAirPollutionDataStart).call,
    TypedReducer<AppState, GetAirPollutionDataSuccessful>(_getAirPollutionDataSuccessful).call,
    TypedReducer<AppState, GetAirPollutionDataError>(_getAirPollutionDataError).call,
    TypedReducer<AppState, GetLocationStart>(_getLocationStart).call,
    TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful).call,
    TypedReducer<AppState, GetLocationError>(_getLocationError).call,
    TypedReducer<AppState, SetLocation>(_setLocation).call,
    TypedReducer<AppState, SetImperialUnits>(_setImperialUnits).call,
    TypedReducer<AppState, GetCoordinatesSuccessful>(_getCoordinatesSuccessful).call,
  ])(state, action);
}

AppState _getLocationStart(AppState state, GetLocationStart action) {
  return state.copyWith(isLoadingCurrentWeather: true, isLoadingForecastWeather: true);
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.copyWith(
      isLoadingCurrentWeather: false, isLoadingForecastWeather: false, locationData: action.locationData);
}

AppState _getLocationError(AppState state, GetLocationError action) {
  return state.copyWith(
    isLoadingCurrentWeather: false,
    isLoadingForecastWeather: false,
  );
}

AppState _setLocation(AppState state, SetLocation action) {
  return state.copyWith(
    locationData: action.locationData,
  );
}

AppState _getCurrentWeatherStart(AppState state, GetCurrentWeatherStart action) {
  return state.copyWith(isLoadingCurrentWeather: true, locationData: state.locationData);
}

AppState _getCurrentWeatherSuccessful(AppState state, GetCurrentWeatherSuccessful action) {
  return state.copyWith(
    isLoadingCurrentWeather: false,
    locationData: state.locationData,
    currentWeather: action.currentWeather,
  );
}

AppState _getCurrentWeatherError(AppState state, GetCurrentWeatherError action) {
  return state.copyWith(isLoadingCurrentWeather: false, locationData: state.locationData);
}

AppState _getForecastStart(AppState state, GetForecastStart action) {
  return state.copyWith(isLoadingForecastWeather: true, locationData: state.locationData);
}

AppState _getForecastSuccessful(AppState state, GetForecastSuccessful action) {
  return state.copyWith(
    locationData: state.locationData,
    forecastWeather: action.forecastWeather,
    isLoadingForecastWeather: false,
  );
}

AppState _getForecastError(AppState state, GetForecastError action) {
  return state.copyWith(isLoadingForecastWeather: false, locationData: state.locationData);
}

AppState _getAirPollutionDataStart(AppState state, GetAirPollutionDataStart action) {
  return state.copyWith(isLoadingAirPollution: true, locationData: state.locationData);
}

AppState _getAirPollutionDataSuccessful(AppState state, GetAirPollutionDataSuccessful action) {
  return state.copyWith(
    locationData: state.locationData,
    airPollutionData: action.airPollutionData,
    isLoadingAirPollution: false,
  );
}

AppState _getAirPollutionDataError(AppState state, GetAirPollutionDataError action) {
  return state.copyWith(isLoadingAirPollution: false, locationData: state.locationData);
}

AppState _setImperialUnits(AppState state, SetImperialUnits action) {
  return state.copyWith(imperialUnits: action.imperialUnits);
}

AppState _getCoordinatesSuccessful(AppState state, GetCoordinatesSuccessful action) {
  return state.copyWith(locationData: action.locationData);
}
