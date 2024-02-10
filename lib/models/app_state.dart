import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_weather.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({CurrentWeather? currentWeather}) = AppState$;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
