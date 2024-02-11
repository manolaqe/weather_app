import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/air_pollution_data.dart';
import 'app_action.dart';

part 'get_air_pollution_data.freezed.dart';

@freezed
class GetAirPollutionData with _$GetAirPollutionData implements AppAction {
  const factory GetAirPollutionData() = GetAirPollutionDataStart;

  const factory GetAirPollutionData.successful(
      AirPollutionData airPollutionData) = GetAirPollutionDataSuccessful;

  @Implements<ErrorAction>()
  const factory GetAirPollutionData.error(Object error, StackTrace stackTrace) =
      GetAirPollutionDataError;
}
