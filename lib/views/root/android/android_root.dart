import 'package:clockapp/views/root/android/pages/android_clock_page.dart';
import 'package:clockapp/views/root/root_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/clock/clock_view/c_create_button.dart';

class AndroidRoot extends StatelessWidget {
  const AndroidRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
      Get.find<RootController>().changeCrossAxisCount('Phone', orientation == Orientation.portrait);
      return Scaffold(
        body: ClockPage(),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const CCreateButton(),
      );
    });
  }
}
