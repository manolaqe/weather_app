import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'actions/get_location.dart';
import 'api/location_api.dart';
import 'api/open_weather_api.dart';
import 'epics/app_epics.dart';
import 'models/app_state.dart';
import 'presentation/home_page.dart';
import 'reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Client client = Client();
  final OpenWeatherApi api = OpenWeatherApi(client, '2ede6351d981312c95d45e1b5c51849e');
  final Location location = Location();
  final LocationApi locationApi = LocationApi(location: location);
  final AppEpics appEpic = AppEpics(api, locationApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpic.call).call,
    ],
  );

  store.dispatch(const GetLocation());

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
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
