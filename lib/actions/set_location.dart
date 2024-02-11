import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/location_data.dart';

import 'app_action.dart';

part 'set_location.freezed.dart';

@freezed
class SetLocation with _$SetLocation implements AppAction {
  const factory SetLocation(LocationData locationData) = SetLocation$;
}
