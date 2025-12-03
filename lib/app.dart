import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:zentime/models/clock.state.dart';
import 'package:zentime/pages/clock_screen.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key, required this.store});
  final Store<ClockState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<ClockState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ClockScreen(),
      ),
    );
  }
}
