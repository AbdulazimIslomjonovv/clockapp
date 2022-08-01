import '../../models/clock_model.dart';
import '../app_enums/app_enums.dart';

class AppFunc {
  static String enumToString(EnumWeekdays enumDay) {
    switch(enumDay) {
      case EnumWeekdays.MONDAY: return 'Mon';
      case EnumWeekdays.TUESDAY: return 'Tue';
      case EnumWeekdays.WEDNESDAY: return 'Wed';
      case EnumWeekdays.THURSDAY: return 'Thu';
      case EnumWeekdays.FRIDAY: return 'Fri';
      case EnumWeekdays.SATURDAY: return 'Sat';
      default: return 'Sun';
    }
  }

  static EnumWeekdays stringToEnum(String stringDay) {
    switch(stringDay) {
      case "Mon": return EnumWeekdays.MONDAY;
      case "Tue": return EnumWeekdays.TUESDAY;
      case "Wed": return EnumWeekdays.WEDNESDAY;
      case "Thu": return EnumWeekdays.THURSDAY;
      case "Fri": return EnumWeekdays.FRIDAY;
      case "Sat": return EnumWeekdays.SATURDAY;
      default: return EnumWeekdays.SUNDAY;
    }
  }
}