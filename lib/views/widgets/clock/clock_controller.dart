import 'package:clockapp/views/widgets/clock/clock_view/c_app_bar_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'clock_view/c_clock.dart';

class ClockController extends GetxController {
  final ScrollController scrollController = ScrollController(initialScrollOffset: 1);
  bool bl = true;
  Widget clock = CClock();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.position.pixels > 300) {
        clock = CClockAppBar(title: '1');
        bl = false;
      } else {
        clock = CClock();
        bl = true;
      }
      update();
    });
  }
}
