import 'package:zentime/models/alarm_model.dart';

// Alarm actions
class AddAlarmAction {
  AlarmModel alarm;
  AddAlarmAction(this.alarm);
}

class UpdateAlarmAction {
  AlarmModel alarm;
  UpdateAlarmAction(this.alarm);
}

class DeleteAlarmAction {
  String alarmId;
  DeleteAlarmAction(this.alarmId);
}

class ToggleAlarms {
  String alarmId;
  ToggleAlarms(this.alarmId);
}

class TriggerAlarmAction {
  String alarmId;
  TriggerAlarmAction(this.alarmId);
}

class SnoozeAlarmAction {
  String alarmId;
  SnoozeAlarmAction(this.alarmId);
}

class StopAlarmAction {
  String alarmId;
  StopAlarmAction(this.alarmId);
}

// Clock actions

class UpdateTimeAction {
  DateTime time;
  UpdateTimeAction(this.time);
}

class ToggleClockFormat {}