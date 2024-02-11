import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_action.dart';

part 'set_imperial_units.freezed.dart';

@freezed
class SetImperialUnits with _$SetImperialUnits implements AppAction {
  const factory SetImperialUnits(bool imperialUnits) = SetImperialUnits$;
}
