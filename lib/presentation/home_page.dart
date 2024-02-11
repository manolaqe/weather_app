// ignore_for_file: unnecessary_parenthesis

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../actions/get_air_pollution_data.dart';
import '../actions/get_coordinates.dart';
import '../actions/get_current_weather.dart';
import '../actions/get_forecast.dart';
import '../actions/get_location.dart';
import '../actions/set_imperial_units.dart';
import '../containers/air_pollution_data_container.dart';
import '../containers/current_weather_container.dart';
import '../containers/extensions.dart';
import '../containers/forecast_container.dart';
import '../containers/is_loading_air_pollution.dart';
import '../containers/is_loading_current_container.dart';
import '../containers/is_loading_forecast_container.dart';
import '../containers/location_container.dart';
import '../models/air_pollution_data.dart';
import '../models/app_state.dart';
import '../models/current_weather.dart';
import '../models/forecast_element.dart';
import '../models/forecast_weather.dart';
import '../models/location_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color backgroundColor = const Color.fromARGB(255, 84, 152, 225);
  final TextEditingController _textController = TextEditingController();
  bool imperialUnits = false;

  @override
  void initState() {
    super.initState();
    context
      ..dispatch(const GetCurrentWeather())
      ..dispatch(const GetForecast())
      ..dispatch(const GetAirPollutionData());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LocationContainer(
      builder: (BuildContext context, LocationData? locationData) {
        return CurrentWeatherContainer(
          builder: (BuildContext context, CurrentWeather currentWeather) {
            return ForecastContainer(
              builder: (BuildContext context, ForecastWeather forecastWeather) {
                return AirPollutionDataContainer(
                  builder: (BuildContext context,
                      AirPollutionData airPollutionData) {
                    return IsLoadingCurrentContainer(
                      builder: (BuildContext context, bool isLoadingCurrent) {
                        return IsLoadingForecastContainer(
                          builder:
                              (BuildContext context, bool isLoadingForecast) {
                            return IsLoadingAirPollutionContainer(
                              builder: (BuildContext context,
                                  bool isLoadingAirPollution) {
                                final List<ForecastElement> forecastElements =
                                    forecastWeather.list;

                                return RefreshIndicator(
                                  onRefresh: () async {
                                    _textController.clear();
                                    context
                                      ..dispatch(const GetCurrentWeather())
                                      ..dispatch(const GetForecast())
                                      ..dispatch(const GetAirPollutionData());
                                    await context.store.onChange.firstWhere(
                                        (AppState state) =>
                                            !state.isLoadingCurrentWeather &&
                                            !state.isLoadingForecastWeather &&
                                            !state.isLoadingAirPollution);
                                  },
                                  child: Scaffold(
                                    backgroundColor: backgroundColor,
                                    drawer: Drawer(
                                      backgroundColor:
                                          backgroundColor.withAlpha(170),
                                      child: ListView(
                                        children: <Widget>[
                                          ListTile(
                                            title: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Icon(Icons.location_on),
                                                  Text(
                                                    'Current location',
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  )
                                                ]),
                                            onTap: () {
                                              context
                                                ..dispatch(const GetLocation())
                                                ..dispatch(
                                                    const GetCurrentWeather())
                                                ..dispatch(const GetForecast())
                                                ..dispatch(
                                                    const GetAirPollutionData());

                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                const Text('Imperial Units'),
                                                Switch(
                                                  value: imperialUnits,
                                                  onChanged: (bool value) {
                                                    setState(() {
                                                      imperialUnits = value;
                                                    });

                                                    context
                                                      ..dispatch(
                                                          SetImperialUnits(
                                                              imperialUnits))
                                                      ..dispatch(
                                                          const GetCurrentWeather())
                                                      ..dispatch(
                                                          const GetForecast())
                                                      ..dispatch(
                                                          const GetAirPollutionData());
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),

                                          ListTile(
                                            title: TextField(
                                              controller: _textController,
                                              onChanged: (String value) {
                                                context
                                                  ..dispatch(
                                                      GetCoordinates(value))
                                                  ..dispatch(
                                                      const GetCurrentWeather())
                                                  ..dispatch(
                                                      const GetForecast())
                                                  ..dispatch(
                                                      const GetAirPollutionData());

                                                // _textController.clear();
                                                // Navigator.pop(context);
                                              },
                                              style: const TextStyle(
                                                  color: Colors.white),
                                              decoration: const InputDecoration(
                                                hintText: 'Search',
                                                hintStyle: TextStyle(
                                                    color: Colors.white),
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          )
                                          // ListTile(
                                          //   title: const Text('New York'),
                                          //   onTap: () {
                                          //     setState(() {
                                          //       cityName = 'New York';
                                          //     });
                                          //     Navigator.pop(context);
                                          //   },
                                          // ),
                                          // ListTile(
                                          //   title: const Text('Los Angeles'),
                                          //   onTap: () {
                                          //     setState(() {
                                          //       cityName = 'Los Angeles';
                                          //     });
                                          //     Navigator.pop(context);
                                          //   },
                                          // ),
                                        ],
                                      ),
                                    ),
                                    appBar: AppBar(
                                      backgroundColor: Colors.transparent,
                                      title: Text(currentWeather.name),
                                    ),
                                    body: !isLoadingCurrent &&
                                            !isLoadingForecast &&
                                            !isLoadingAirPollution
                                        ? SingleChildScrollView(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  stops: const <double>[
                                                    0.25,
                                                    1.0
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomLeft,
                                                  colors: <Color>[
                                                    backgroundColor,
                                                    backgroundColor
                                                        .withRed(backgroundColor
                                                                .red +
                                                            40)
                                                        .withGreen(
                                                            backgroundColor
                                                                    .green +
                                                                20)
                                                        .withBlue(
                                                            backgroundColor
                                                                    .blue -
                                                                10),
                                                  ],
                                                ),
                                              ),
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text(
                                                                '${currentWeather.main.temp}°',
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        70,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            Text(
                                                                currentWeather
                                                                        .weather
                                                                        .isNotEmpty
                                                                    ? currentWeather
                                                                        .weather[
                                                                            0]
                                                                        .main
                                                                    : '',
                                                                style:
                                                                    const TextStyle(
                                                                        fontSize:
                                                                            20)),
                                                            Text(
                                                                '${currentWeather.main.tempMin}°/${currentWeather.main.tempMax}° | ${currentWeather.main.humidity}%  Feels like ${currentWeather.main.feelsLike}°',
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize: 20,
                                                                ))
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Card(
                                                    shape: ShapeBorder.lerp(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      0.5,
                                                    ),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: <Widget>[
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                  forecastElements[
                                                                          0]
                                                                      .dtTxt
                                                                      .substring(
                                                                          11,
                                                                          16),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              ImageIcon(
                                                                  AssetImage(
                                                                      'assets/${forecastElements[0].weather[0].icon}.png'),
                                                                  color: Colors
                                                                      .white,
                                                                  size: 40),
                                                              Text(
                                                                  '${forecastElements[0].main.temp}°',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Row(
                                                                children: <Widget>[
                                                                  const Icon(
                                                                      Icons
                                                                          .water_drop_sharp,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 17),
                                                                  Text(
                                                                      '${forecastElements[0].main.humidity}%',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                  forecastElements[
                                                                          1]
                                                                      .dtTxt
                                                                      .substring(
                                                                          11,
                                                                          16),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              ImageIcon(
                                                                  AssetImage(
                                                                      'assets/${forecastElements[1].weather[0].icon}.png'),
                                                                  color: Colors
                                                                      .white,
                                                                  size: 40),
                                                              Text(
                                                                  '${forecastElements[1].main.temp}°',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Row(
                                                                children: <Widget>[
                                                                  const Icon(
                                                                      Icons
                                                                          .water_drop_sharp,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 17),
                                                                  Text(
                                                                      '${forecastElements[1].main.humidity}%',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                  forecastElements[
                                                                          2]
                                                                      .dtTxt
                                                                      .substring(
                                                                          11,
                                                                          16),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              ImageIcon(
                                                                  AssetImage(
                                                                      'assets/${forecastElements[2].weather[0].icon}.png'),
                                                                  color: Colors
                                                                      .white,
                                                                  size: 40),
                                                              Text(
                                                                  '${forecastElements[2].main.temp}°',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Row(
                                                                children: <Widget>[
                                                                  const Icon(
                                                                      Icons
                                                                          .water_drop_sharp,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 17),
                                                                  Text(
                                                                      '${forecastElements[2].main.humidity}%',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                  forecastElements[
                                                                          3]
                                                                      .dtTxt
                                                                      .substring(
                                                                          11,
                                                                          16),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              ImageIcon(
                                                                  AssetImage(
                                                                      'assets/${forecastElements[3].weather[0].icon}.png'),
                                                                  color: Colors
                                                                      .white,
                                                                  size: 40),
                                                              Text(
                                                                  '${forecastElements[3].main.temp}°',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Row(
                                                                children: <Widget>[
                                                                  const Icon(
                                                                      Icons
                                                                          .water_drop_sharp,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 17),
                                                                  Text(
                                                                      '${forecastElements[3].main.humidity}%',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                  forecastElements[
                                                                          4]
                                                                      .dtTxt
                                                                      .substring(
                                                                          11,
                                                                          16),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              ImageIcon(
                                                                  AssetImage(
                                                                      'assets/${forecastElements[4].weather[0].icon}.png'),
                                                                  color: Colors
                                                                      .white,
                                                                  size: 40),
                                                              Text(
                                                                  '${forecastElements[4].main.temp}°',
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                      color: Colors
                                                                          .white)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Row(
                                                                children: <Widget>[
                                                                  const Icon(
                                                                      Icons
                                                                          .water_drop_sharp,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 17),
                                                                  Text(
                                                                      '${forecastElements[4].main.humidity}%',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape: ShapeBorder.lerp(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      0.5,
                                                    ),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text(
                                                              'Air AQI: ${airPollutionData.list[0].main.aqi} ${getAirQualityAttriburte(airPollutionData.list[0].main.aqi)}',
                                                              style: const TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white)),
                                                          LinearProgressIndicator(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10)),
                                                            minHeight: 5,
                                                            value:
                                                                airPollutionData
                                                                        .list[0]
                                                                        .main
                                                                        .aqi /
                                                                    5,
                                                            backgroundColor:
                                                                Colors.white,
                                                            valueColor: AlwaysStoppedAnimation<
                                                                Color>(airPollutionData
                                                                        .list[0]
                                                                        .main
                                                                        .aqi ==
                                                                    1
                                                                ? Colors.green
                                                                : airPollutionData
                                                                            .list[
                                                                                0]
                                                                            .main
                                                                            .aqi ==
                                                                        2
                                                                    ? Colors
                                                                        .yellow
                                                                    : airPollutionData.list[0].main.aqi ==
                                                                            3
                                                                        ? Colors
                                                                            .orange
                                                                        : airPollutionData.list[0].main.aqi ==
                                                                                4
                                                                            ? Colors.red
                                                                            : Colors.purple),
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: <Widget>[
                                                              Column(
                                                                children: <Widget>[
                                                                  const Text(
                                                                      'SO2',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                      '${airPollutionData.list[0].components.so2}',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: <Widget>[
                                                                  const Text(
                                                                      'NO2',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                      '${airPollutionData.list[0].components.no2}',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: <Widget>[
                                                                  const Text(
                                                                      'PM10',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                      '${airPollutionData.list[0].components.pm10}',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: <Widget>[
                                                                  const Text(
                                                                      'PM2.5',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                      '${airPollutionData.list[0].components.pm2_5}',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: <Widget>[
                                                                  const Text(
                                                                      'O3',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                      '${airPollutionData.list[0].components.o3}',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: <Widget>[
                                                                  const Text(
                                                                      'CO',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  Text(
                                                                      '${airPollutionData.list[0].components.co}',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape: ShapeBorder.lerp(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      0.5,
                                                    ),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Column(
                                                        children: <Widget>[
                                                          CustomPaint(
                                                            painter:
                                                                CurvedLinePainter(
                                                              progress: (DateTime
                                                                          .now()
                                                                      .difference(DateTime.fromMillisecondsSinceEpoch(forecastWeather
                                                                              .city
                                                                              .sunrise *
                                                                          1000))
                                                                      .inHours /
                                                                  (DateTime.fromMillisecondsSinceEpoch(forecastWeather
                                                                              .city
                                                                              .sunset *
                                                                          1000)
                                                                      .difference(DateTime.fromMillisecondsSinceEpoch(forecastWeather
                                                                              .city
                                                                              .sunrise *
                                                                          1000))
                                                                      .inHours)),
                                                            ),
                                                            size: const Size(
                                                                400, 100),
                                                          ),
                                                          const Divider(
                                                              color:
                                                                  Colors.white,
                                                              thickness: 2),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Column(
                                                                children: <Widget>[
                                                                  Text(
                                                                      DateTime.fromMillisecondsSinceEpoch(forecastWeather.city.sunrise *
                                                                              1000)
                                                                          .toString()
                                                                          .substring(11,
                                                                              16),
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                  const Text(
                                                                      'Sunrise',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: <Widget>[
                                                                  Text(
                                                                      DateTime.fromMillisecondsSinceEpoch(forecastWeather.city.sunset *
                                                                              1000)
                                                                          .toString()
                                                                          .substring(11,
                                                                              16),
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                  const Text(
                                                                      'Sunset',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape: ShapeBorder.lerp(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      0.5,
                                                    ),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Column(
                                                        children: <Widget>[
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: <Widget>[
                                                              const Text(
                                                                'Today',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Row(
                                                                children: <Widget>[
                                                                  const Icon(
                                                                    Icons
                                                                        .water_drop_sharp,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 20,
                                                                  ),
                                                                  Text(
                                                                    '${currentWeather.main.humidity}%',
                                                                    style:
                                                                        const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: <Widget>[
                                                                  ImageIcon(
                                                                      AssetImage(
                                                                          'assets/${currentWeather.weather[0].icon}.png'),
                                                                      color: Colors
                                                                          .white,
                                                                      size: 40),
                                                                  ImageIcon(
                                                                      AssetImage(
                                                                          'assets/${forecastElements.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == DateTime.now().day).weather[0].icon}.png'),
                                                                      color: Colors
                                                                          .white,
                                                                      size: 40),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: <Widget>[
                                                                  Text(
                                                                      '${currentWeather.main.tempMin.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                  const SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      '${currentWeather.main.tempMax.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white))
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: <Widget>[
                                                              Text(
                                                                  DateFormat('EEEE').format(DateTime
                                                                          .now()
                                                                      .add(const Duration(
                                                                          hours:
                                                                              24))),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: Colors
                                                                          .white)),
                                                              Row(
                                                                children: <Widget>[
                                                                  const Icon(
                                                                      Icons
                                                                          .water_drop_sharp,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 20),
                                                                  Text(
                                                                      '${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 24)).day)).main.humidity}%',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: <Widget>[
                                                                  ImageIcon(
                                                                      AssetImage(
                                                                          'assets/${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 24)).day)).weather[0].icon}.png'),
                                                                      color: Colors
                                                                          .white,
                                                                      size: 40),
                                                                  ImageIcon(
                                                                      AssetImage(
                                                                          'assets/${forecastElements.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 24)).day)).weather[0].icon}.png'),
                                                                      color: Colors
                                                                          .white,
                                                                      size: 40),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: <Widget>[
                                                                  Text(
                                                                      '${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 24)).day)).main.tempMin.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                  const SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      '${forecastElements.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 24)).day)).main.tempMin.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: <Widget>[
                                                              Text(
                                                                  DateFormat('EEEE').format(DateTime
                                                                          .now()
                                                                      .add(const Duration(
                                                                          hours:
                                                                              48))),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: Colors
                                                                          .white)),
                                                              Row(children: <Widget>[
                                                                const Icon(
                                                                    Icons
                                                                        .water_drop_sharp,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 20),
                                                                Text(
                                                                    '${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 48)).day)).main.humidity}%',
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        color: Colors
                                                                            .white)),
                                                              ]),
                                                              Row(children: <Widget>[
                                                                ImageIcon(
                                                                    AssetImage(
                                                                        'assets/${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == DateTime.now().add(const Duration(hours: 48)).day).weather[0].icon}.png'),
                                                                    color: Colors
                                                                        .white,
                                                                    size: 40),
                                                                ImageIcon(
                                                                    AssetImage(
                                                                        'assets/${forecastElements.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == DateTime.now().add(const Duration(hours: 48)).day).weather[0].icon}.png'),
                                                                    color: Colors
                                                                        .white,
                                                                    size: 40),
                                                              ]),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: <Widget>[
                                                                  Text(
                                                                      '${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 48)).day)).main.tempMin.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                  const SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      '${forecastElements.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 48)).day)).main.tempMin.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: <Widget>[
                                                              Text(
                                                                  DateFormat('EEEE').format(DateTime
                                                                          .now()
                                                                      .add(const Duration(
                                                                          hours:
                                                                              72))),
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: Colors
                                                                          .white)),
                                                              Row(children: <Widget>[
                                                                const Icon(
                                                                    Icons
                                                                        .water_drop_sharp,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 20),
                                                                Text(
                                                                    '${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 72)).day)).main.humidity}%',
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        color: Colors
                                                                            .white)),
                                                              ]),
                                                              Row(children: <Widget>[
                                                                ImageIcon(
                                                                    AssetImage(
                                                                        'assets/${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == DateTime.now().add(const Duration(hours: 72)).day).weather[0].icon}.png'),
                                                                    color: Colors
                                                                        .white,
                                                                    size: 40),
                                                                ImageIcon(
                                                                    AssetImage(
                                                                        'assets/${forecastElements.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == DateTime.now().add(const Duration(hours: 72)).day).weather[0].icon}.png'),
                                                                    color: Colors
                                                                        .white,
                                                                    size: 40),
                                                              ]),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: <Widget>[
                                                                  Text(
                                                                      '${forecastElements.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 72)).day)).main.tempMin.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                  const SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      '${forecastElements.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(const Duration(hours: 72)).day)).main.tempMin.ceil()}°',
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          color:
                                                                              Colors.white)),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: ListTile(
                                                        leading:
                                                            Transform.rotate(
                                                                angle: (currentWeather
                                                                            .wind
                                                                            .deg -
                                                                        90) *
                                                                    3.14 /
                                                                    180,
                                                                child:
                                                                    const Icon(
                                                                  Icons
                                                                      .navigation_outlined,
                                                                  size: 30,
                                                                  color: Colors
                                                                      .white,
                                                                )),
                                                        title: const Text(
                                                            'Wind',
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white)),
                                                        subtitle: Text(
                                                            '${currentWeather.wind.speed} m/s',
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: ListTile(
                                                        leading: const Icon(
                                                            Icons.water,
                                                            color:
                                                                Colors.white),
                                                        title: const Text(
                                                            'Humidity',
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white)),
                                                        subtitle: Text(
                                                            '${currentWeather.main.humidity}%',
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: ListTile(
                                                        leading: const Icon(
                                                            Icons.speed,
                                                            color:
                                                                Colors.white),
                                                        title: const Text(
                                                            'Pressure',
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white)),
                                                        subtitle: Text(
                                                            '${currentWeather.main.pressure} hPa',
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                    elevation: 2,
                                                    color: backgroundColor
                                                        .withAlpha(150),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: ListTile(
                                                        leading: const Icon(
                                                            Icons.visibility,
                                                            color:
                                                                Colors.white),
                                                        title: const Text(
                                                            'Visibility',
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .white)),
                                                        subtitle: Text(
                                                            '${currentWeather.visibility} m',
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        : const Center(
                                            child: CircularProgressIndicator()),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}

String getAirQualityAttriburte(int aqi) {
  if (aqi == 1) {
    return 'Good';
  } else if (aqi == 2) {
    return 'Fair';
  } else if (aqi == 3) {
    return 'Moderate';
  } else if (aqi == 4) {
    return 'Poor';
  } else if (aqi == 5) {
    return 'Very Poor';
  }

  return 'Unknown';
}

class CurvedLinePainter extends CustomPainter {
  CurvedLinePainter({required this.progress});
  double progress;
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final Paint progressPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    final double radius = size.height;
    final double center = size.width / 2;
    final double sweepAngle = math.pi * progress;

    // Draw background arc
    canvas.drawArc(
        Rect.fromCircle(center: Offset(center, radius), radius: radius),
        math.pi,
        math.pi,
        false,
        paint);

    // Draw progress arc
    canvas.drawArc(
      Rect.fromCircle(center: Offset(center, radius), radius: radius),
      math.pi,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CurvedLinePainter oldDelegate) {
    return false;
  }
}
