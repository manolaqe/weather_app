import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/app_action.dart';
import '../actions/get_current_weather.dart';
import '../api/open_weather_api.dart';
import '../models/app_state.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.api);

  final OpenWeatherApi api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[TypedEpic<AppState, GetCurrentWeatherStart>(_getCurrentWeatherStart).call])(
        actions, store);
  }

  Stream<AppAction> _getCurrentWeatherStart(Stream<GetCurrentWeatherStart> actions, EpicStore<AppState> store) {
    return actions.debounceTime(const Duration(milliseconds: 500)).switchMap((GetCurrentWeatherStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) {
            return api.getCurrentWeather(lat: 0, lng: 0);
          })
          .map((weather) => GetCurrentWeather.successful(weather))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCurrentWeather.error(error, stackTrace));
    });
  }
}
