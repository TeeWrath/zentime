import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:zentime/actions/app.actions.dart';
import 'package:zentime/models/clock.state.dart';

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
            StoreConnector<ClockState, _ViewModel>(
              builder: (context, vm) {
                return Row(
                    children: [
                      Text(
                        '12H',
                        style: TextStyle(color: Colors.white),
                      ),
                      Switch(
                        value: vm.is24HrFormat,
                        onChanged: (value) => vm.toggleFormat(),
                      ),
                      Text(
                        '24H',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  );
              },
              converter: (store) => _ViewModel(
                is24HrFormat: store.state.is24HrFormat,
                toggleFormat: () => store.dispatch(ToggleClockFormat()),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height / 2,
              left: MediaQuery.of(context).size.width / 2,
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

class _ViewModel {
  final bool is24HrFormat;
  final VoidCallback toggleFormat;
  _ViewModel({required this.is24HrFormat, required this.toggleFormat});
}
