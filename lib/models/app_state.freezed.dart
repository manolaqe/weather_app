// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  LocationData get locationData => throw _privateConstructorUsedError;
  CurrentWeather get currentWeather => throw _privateConstructorUsedError;
  ForecastWeather get forecastWeather => throw _privateConstructorUsedError;
  AirPollutionData get airPollutionData => throw _privateConstructorUsedError;
  bool get isLoadingAirPollution => throw _privateConstructorUsedError;
  bool get isLoadingCurrentWeather => throw _privateConstructorUsedError;
  bool get isLoadingForecastWeather => throw _privateConstructorUsedError;
  bool get imperialUnits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {LocationData locationData,
      CurrentWeather currentWeather,
      ForecastWeather forecastWeather,
      AirPollutionData airPollutionData,
      bool isLoadingAirPollution,
      bool isLoadingCurrentWeather,
      bool isLoadingForecastWeather,
      bool imperialUnits});

  $LocationDataCopyWith<$Res> get locationData;
  $CurrentWeatherCopyWith<$Res> get currentWeather;
  $ForecastWeatherCopyWith<$Res> get forecastWeather;
  $AirPollutionDataCopyWith<$Res> get airPollutionData;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationData = null,
    Object? currentWeather = null,
    Object? forecastWeather = null,
    Object? airPollutionData = null,
    Object? isLoadingAirPollution = null,
    Object? isLoadingCurrentWeather = null,
    Object? isLoadingForecastWeather = null,
    Object? imperialUnits = null,
  }) {
    return _then(_value.copyWith(
      locationData: null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecastWeather: null == forecastWeather
          ? _value.forecastWeather
          : forecastWeather // ignore: cast_nullable_to_non_nullable
              as ForecastWeather,
      airPollutionData: null == airPollutionData
          ? _value.airPollutionData
          : airPollutionData // ignore: cast_nullable_to_non_nullable
              as AirPollutionData,
      isLoadingAirPollution: null == isLoadingAirPollution
          ? _value.isLoadingAirPollution
          : isLoadingAirPollution // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCurrentWeather: null == isLoadingCurrentWeather
          ? _value.isLoadingCurrentWeather
          : isLoadingCurrentWeather // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingForecastWeather: null == isLoadingForecastWeather
          ? _value.isLoadingForecastWeather
          : isLoadingForecastWeather // ignore: cast_nullable_to_non_nullable
              as bool,
      imperialUnits: null == imperialUnits
          ? _value.imperialUnits
          : imperialUnits // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res> get locationData {
    return $LocationDataCopyWith<$Res>(_value.locationData, (value) {
      return _then(_value.copyWith(locationData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastWeatherCopyWith<$Res> get forecastWeather {
    return $ForecastWeatherCopyWith<$Res>(_value.forecastWeather, (value) {
      return _then(_value.copyWith(forecastWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirPollutionDataCopyWith<$Res> get airPollutionData {
    return $AirPollutionDataCopyWith<$Res>(_value.airPollutionData, (value) {
      return _then(_value.copyWith(airPollutionData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$ImplCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$ImplCopyWith(_$AppState$Impl value, $Res Function(_$AppState$Impl) then) =
      __$$AppState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationData locationData,
      CurrentWeather currentWeather,
      ForecastWeather forecastWeather,
      AirPollutionData airPollutionData,
      bool isLoadingAirPollution,
      bool isLoadingCurrentWeather,
      bool isLoadingForecastWeather,
      bool imperialUnits});

  @override
  $LocationDataCopyWith<$Res> get locationData;
  @override
  $CurrentWeatherCopyWith<$Res> get currentWeather;
  @override
  $ForecastWeatherCopyWith<$Res> get forecastWeather;
  @override
  $AirPollutionDataCopyWith<$Res> get airPollutionData;
}

/// @nodoc
class __$$AppState$ImplCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res, _$AppState$Impl>
    implements _$$AppState$ImplCopyWith<$Res> {
  __$$AppState$ImplCopyWithImpl(_$AppState$Impl _value, $Res Function(_$AppState$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationData = null,
    Object? currentWeather = null,
    Object? forecastWeather = null,
    Object? airPollutionData = null,
    Object? isLoadingAirPollution = null,
    Object? isLoadingCurrentWeather = null,
    Object? isLoadingForecastWeather = null,
    Object? imperialUnits = null,
  }) {
    return _then(_$AppState$Impl(
      locationData: null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      forecastWeather: null == forecastWeather
          ? _value.forecastWeather
          : forecastWeather // ignore: cast_nullable_to_non_nullable
              as ForecastWeather,
      airPollutionData: null == airPollutionData
          ? _value.airPollutionData
          : airPollutionData // ignore: cast_nullable_to_non_nullable
              as AirPollutionData,
      isLoadingAirPollution: null == isLoadingAirPollution
          ? _value.isLoadingAirPollution
          : isLoadingAirPollution // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCurrentWeather: null == isLoadingCurrentWeather
          ? _value.isLoadingCurrentWeather
          : isLoadingCurrentWeather // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingForecastWeather: null == isLoadingForecastWeather
          ? _value.isLoadingForecastWeather
          : isLoadingForecastWeather // ignore: cast_nullable_to_non_nullable
              as bool,
      imperialUnits: null == imperialUnits
          ? _value.imperialUnits
          : imperialUnits // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.locationData = const LocationData(lat: 44.4268, lon: 26.1025),
      this.currentWeather =
          const CurrentWeather(coord: Coord(), main: Main(), wind: Wind(), clouds: Clouds(), sys: Sys()),
      this.forecastWeather = const ForecastWeather(city: City(coord: Coord())),
      this.airPollutionData = const AirPollutionData(coord: Coord()),
      this.isLoadingAirPollution = false,
      this.isLoadingCurrentWeather = false,
      this.isLoadingForecastWeather = false,
      this.imperialUnits = false});

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) => _$$AppState$ImplFromJson(json);

  @override
  @JsonKey()
  final LocationData locationData;
  @override
  @JsonKey()
  final CurrentWeather currentWeather;
  @override
  @JsonKey()
  final ForecastWeather forecastWeather;
  @override
  @JsonKey()
  final AirPollutionData airPollutionData;
  @override
  @JsonKey()
  final bool isLoadingAirPollution;
  @override
  @JsonKey()
  final bool isLoadingCurrentWeather;
  @override
  @JsonKey()
  final bool isLoadingForecastWeather;
  @override
  @JsonKey()
  final bool imperialUnits;

  @override
  String toString() {
    return 'AppState(locationData: $locationData, currentWeather: $currentWeather, forecastWeather: $forecastWeather, airPollutionData: $airPollutionData, isLoadingAirPollution: $isLoadingAirPollution, isLoadingCurrentWeather: $isLoadingCurrentWeather, isLoadingForecastWeather: $isLoadingForecastWeather, imperialUnits: $imperialUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.locationData, locationData) || other.locationData == locationData) &&
            (identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather) &&
            (identical(other.forecastWeather, forecastWeather) || other.forecastWeather == forecastWeather) &&
            (identical(other.airPollutionData, airPollutionData) || other.airPollutionData == airPollutionData) &&
            (identical(other.isLoadingAirPollution, isLoadingAirPollution) ||
                other.isLoadingAirPollution == isLoadingAirPollution) &&
            (identical(other.isLoadingCurrentWeather, isLoadingCurrentWeather) ||
                other.isLoadingCurrentWeather == isLoadingCurrentWeather) &&
            (identical(other.isLoadingForecastWeather, isLoadingForecastWeather) ||
                other.isLoadingForecastWeather == isLoadingForecastWeather) &&
            (identical(other.imperialUnits, imperialUnits) || other.imperialUnits == imperialUnits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationData, currentWeather, forecastWeather, airPollutionData,
      isLoadingAirPollution, isLoadingCurrentWeather, isLoadingForecastWeather, imperialUnits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      __$$AppState$ImplCopyWithImpl<_$AppState$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ImplToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final LocationData locationData,
      final CurrentWeather currentWeather,
      final ForecastWeather forecastWeather,
      final AirPollutionData airPollutionData,
      final bool isLoadingAirPollution,
      final bool isLoadingCurrentWeather,
      final bool isLoadingForecastWeather,
      final bool imperialUnits}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$Impl.fromJson;

  @override
  LocationData get locationData;
  @override
  CurrentWeather get currentWeather;
  @override
  ForecastWeather get forecastWeather;
  @override
  AirPollutionData get airPollutionData;
  @override
  bool get isLoadingAirPollution;
  @override
  bool get isLoadingCurrentWeather;
  @override
  bool get isLoadingForecastWeather;
  @override
  bool get imperialUnits;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith => throw _privateConstructorUsedError;
}
