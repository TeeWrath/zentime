import 'package:zentime/models/alarm_model.dart';

class ClockState {
  final DateTime currentTime;
  final List<AlarmModel> alarms;
  final bool is24HrFormat;
  final bool isAlarmRinging;
  final String? ringingAlarmId;

  ClockState({
    required this.currentTime,
    required this.alarms,
    this.is24HrFormat = true,
    this.isAlarmRinging = false,
    this.ringingAlarmId,
  });

  ClockState.initial()
    : currentTime = DateTime.now(),
      alarms = [],
      is24HrFormat = true,
      isAlarmRinging = false,
      ringingAlarmId = null;

  ClockState copyWith({
    DateTime? currentTime,
    List<AlarmModel>? alarms,
    bool? is24HrFormat,
    bool? isAlarmRinging,
    String? ringingAlarmId,
  }) {
    return ClockState(
      currentTime: currentTime ?? this.currentTime,
      alarms: alarms ?? this.alarms,
      is24HrFormat: is24HrFormat ?? this.is24HrFormat,
      isAlarmRinging: isAlarmRinging ?? this.isAlarmRinging,
      ringingAlarmId: ringingAlarmId ?? this.ringingAlarmId,
    );
  }
}
