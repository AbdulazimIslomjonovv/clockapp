import 'package:clockapp/models/clock_model.dart';
import 'package:clockapp/utils/app_enums/app_enums.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  int crossAxisCount = 1;
  List<ClockModel> items = [
    ClockModel(name: 'AA', time: DateTime.now(), isActive: true, days: Days(isEvery: true, days: [Weekdays(weekdays: EnumWeekdays.MONDAY)])),
    ClockModel(name: 'BB', time: DateTime.now(), isActive: false, days: Days(isEvery: false, days: [Weekdays(weekdays: EnumWeekdays.FRIDAY)])),
    ClockModel(name: 'AA', time: DateTime.now(), isActive: true, days: Days(isEvery: true, days: [Weekdays(weekdays: EnumWeekdays.MONDAY)])),
    ClockModel(name: 'BB', time: DateTime.now(), isActive: false, days: Days(isEvery: false, days: [Weekdays(weekdays: EnumWeekdays.FRIDAY)])),
    ClockModel(name: 'AA', time: DateTime.now(), isActive: true, days: Days(isEvery: true, days: [Weekdays(weekdays: EnumWeekdays.MONDAY)])),
    // ClockModel(name: 'BB', time: DateTime.now(), isActive: false, days: Days(isEvery: false, days: [Weekdays(weekdays: EnumWeekdays.FRIDAY)])),
  ];

  void changeCrossAxisCount(String model, bool isPortrait) {
    switch (model.toLowerCase().trim()) {
      case 'phone':
        {
          crossAxisCount = isPortrait ? 1 : 2;
        } break;
    }
  }
}
