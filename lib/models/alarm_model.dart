class AlarmModel {
  final String id;
  final DateTime time;
  final String label;
  final List<int> repeatDays;
  final bool isActive;
  final String soundPath;
  final bool isSnoozed;
  final Duration snoozeDuration;

  AlarmModel({
    required this.id,
    required this.time,
    this.label = 'Alarm',
    this.repeatDays = const [],
    this.isActive = true,
    this.soundPath = '',
    this.isSnoozed = false,
    this.snoozeDuration = const Duration(minutes: 5),
  });

  AlarmModel copyWith({
    String? id,
    DateTime? time,
    String? label,
    bool? isActive,
    List<int>? repeatDays,
    String? soundPath,
    bool? isSnoozed,
    Duration? snoozeDuration,
  }) {
    return AlarmModel(
      id: id ?? this.id,
      time: time ?? this.time,
      label: label ?? this.label,
      isActive: isActive ?? this.isActive,
      repeatDays: repeatDays ?? this.repeatDays,
      soundPath: soundPath ?? this.soundPath,
      isSnoozed: isSnoozed ?? this.isSnoozed,
      snoozeDuration: snoozeDuration ?? this.snoozeDuration,
    );
  }
}
