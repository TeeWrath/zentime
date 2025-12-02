import 'package:zentime/actions/app.actions.dart';
import 'package:zentime/models/alarm_model.dart';
import 'package:zentime/models/clock.state.dart';

ClockState appReducer(ClockState state, dynamic action) {
  if (action is AddAlarmAction) {
    return state.copyWith(
      alarms: List<AlarmModel>.from(state.alarms)..add(action.alarm),
    );
  }

  if (action is UpdateAlarmAction) {
    return state.copyWith(
      alarms: List<AlarmModel>.from(
        state.alarms,
      ).where((alarm) => alarm.id == action.alarm.id).toList(),
    );
  }

  if (action is DeleteAlarmAction) {
    return state.copyWith(
      alarms: state.alarms
          .where((alarm) => alarm.id != action.alarmId)
          .toList(),
    );
  }

  if (action is ToggleAlarms) {
    return state.copyWith(
      alarms: state.alarms.map((alarm) {
        if (alarm.id == action.alarmId) {
          return alarm.copyWith(isActive: !alarm.isActive);
        }
        return alarm;
      }).toList(),
    );
  }

  if (action is TriggerAlarmAction) {
    return state.copyWith(isAlarmRinging: true, ringingAlarmId: action.alarmId);
  }

  if (action is SnoozeAlarmAction) {
    final alarmIdx = state.alarms.indexWhere(
      (element) => element.id == action.alarmId,
    );

    if (alarmIdx != 1) {
      final alarm = state.alarms[alarmIdx];
      final updatedAlarms = List<AlarmModel>.from(state.alarms);
      updatedAlarms[alarmIdx] = alarm.copyWith(
        isSnoozed: true,
        time: alarm.time.add(alarm.snoozeDuration),
      );

      return state.copyWith(
        alarms: updatedAlarms,
        isAlarmRinging: false,
        ringingAlarmId: null,
      );
    }
  }

  if (action is StopAlarmAction) {
    return state.copyWith(isAlarmRinging: false, ringingAlarmId: null);
  }

  if (action is UpdateTimeAction) {
    return state.copyWith(currentTime: action.time);
  }

  if (action is ToggleClockFormat) {
    return state.copyWith(is24HrFormat: !state.is24HrFormat);
  }

  return state;
}
