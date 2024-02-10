import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'api/open_weather_api.dart';
import 'epics/app_epics.dart';
import 'models/app_state.dart';
import 'presentation/home_page.dart';
import 'reducer/reducer.dart';

void main() {
  final Client client = Client();
  final OpenWeatherApi api = OpenWeatherApi(client, 'bd5e378503939ddaee76f12ad7a97608');

  final AppEpics appEpic = AppEpics(api);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpic.call).call,
    ],
  );
  runApp(
    WeatherApp(
      store: store,
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        routes: <String, WidgetBuilder>{},
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
