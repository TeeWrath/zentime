import 'package:flutter/material.dart';

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/bg.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),

            Positioned(
              top: MediaQuery.of(context).size.height/2,
              left: MediaQuery.of(context).size.width/2,
              child: Container(
                
                child: Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Text('Time nigga', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
