import 'dart:convert';

import 'package:http/http.dart';

import '../models/current_weather.dart';
import '../models/forecast_weather.dart';

class OpenWeatherApi {
  OpenWeatherApi(this._client, this.appId);

  final String _baseUrl = 'https://api.openweathermap.org/data/2.5/';
  final Client _client;
  final String appId;

  Future<CurrentWeather> getCurrentWeather({int lat = 0, int lng = 0}) async {
    final Uri uri = Uri.parse('$_baseUrl/weather');

    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, dynamic>{
          'appId': appId,
          'lat': lat,
          'lng': lng,
          'mode': 'json',
          'units': 'metric',
          'lang': 'en',
        },
      ),
    );

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;

    return CurrentWeather.fromJson(json);
  }

  Future<ForecastWeather> getWeatherForecast({int lat = 0, int lng = 0, int cnt = 40}) async {
    final Uri uri = Uri.parse('$_baseUrl/forecast');

    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, dynamic>{
          'appId': appId,
          'lat': lat,
          'lng': lng,
          'mode': 'json',
          'units': 'metric',
          'lang': 'en',
          'cnt': cnt,
        },
      ),
    );

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;

    return ForecastWeather.fromJson(json);
  }
}
