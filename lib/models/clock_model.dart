import 'package:clockapp/utils/const_func/app_func.dart';

import '../utils/app_enums/app_enums.dart';



class ClockModel {
  late String name;
  late DateTime time;
  late bool isActive;
  late Days days;

  ClockModel({
    required this.name,
    required this.time,
    required this.isActive,
    required this.days,
  });

  ClockModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    time = DateTime.parse(json['time']);
    isActive = json['isActive'];
    days = Days.fromJson(json['days']);
  }

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'time': time.toIso8601String(),
        'isActive': isActive,
        'days': days.toJson(),
      };

  @override
  String toString() {
    return 'ClockModel{name: $name, time: $time}';
  }
}

class Days {
  late bool isEvery;
  late List<Weekdays> days;

  Days({
    required this.isEvery,
    required this.days,
  });

  Days.fromJson(Map<String, dynamic> json) {
    isEvery = json['isEvery'];
    days = (json['days']).map((json) => Weekdays.fromJson(json)).toList();
  }

  Map<String, dynamic> toJson() => {
    'isEvery': isEvery,
    'days': days.map((object) => object.toJson()).toList(),
  };
}

class Weekdays {
  late EnumWeekdays weekdays;
  late String shortName;
  late String firstLatter;

  Weekdays({
    required this.weekdays,
  }) {
    shortName = AppFunc.enumToString(weekdays);
    firstLatter = shortName[0];
  }

  Weekdays.fromJson(Map<String, dynamic> json) {
    shortName = json['shortName'];
    firstLatter = shortName[0];
    weekdays = AppFunc.stringToEnum(shortName);
  }

  Map<String, String> toJson() => {
    'shortName': shortName,
  };

  @override
  String toString() {
    return toJson().toString();
  }
}

