import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/location_data.dart';
import 'app_action.dart';

part 'get_coordinates.freezed.dart';

@freezed
class GetCoordinates with _$GetCoordinates implements AppAction {
  const factory GetCoordinates(String query) = GetCoordinatesStart;

  const factory GetCoordinates.successful(LocationData locationData) =
      GetCoordinatesSuccessful;

  @Implements<ErrorAction>()
  const factory GetCoordinates.error(Object error, StackTrace stackTrace) =
      GetCoordinatesError;
}
