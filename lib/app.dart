import 'package:flutter/material.dart';
import 'package:zentime/pages/clock_screen.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClockScreen(),
    );
  }
}