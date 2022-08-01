import 'package:clockapp/views/root/root_controller.dart';
import 'package:clockapp/views/widgets/creaate_clock/create_clock_controller.dart';
import 'package:get/get.dart';

import '../views/widgets/clock/clock_controller.dart';

class DIService {
  static void get init {
    Get.lazyPut(() => RootController(), fenix: true);
    Get.lazyPut(() => ClockController(), fenix: true);
    Get.lazyPut(() => CreateClockController(), fenix: true);
  }
}