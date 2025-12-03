import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:zentime/app.dart';
import 'package:zentime/models/clock.state.dart';
import 'package:zentime/reducers/app.reducer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final store = Store(appReducer, initialState: ClockState.initial());
  runApp(StartApp(store: store,));
}
