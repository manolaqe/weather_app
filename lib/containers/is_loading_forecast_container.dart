import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';

class IsLoadingForecastContainer extends StatelessWidget {
  const IsLoadingForecastContainer({super.key, required this.builder});

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.isLoadingForecastWeather;
      },
    );
  }
}
