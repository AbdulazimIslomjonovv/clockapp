import 'package:clockapp/models/clock_model.dart';
import 'package:clockapp/utils/app_enums/app_enums.dart';
import 'package:clockapp/views/root/root_controller.dart';
import 'package:clockapp/views/widgets/clock/clock_view/c_clock_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/clock/clock_controller.dart';
import '../../view/call_clock_items.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      builder: (controller2) {
        return GetBuilder<ClockController>(
          init: ClockController(),
          builder: (controller) {
            return CustomScrollView(
              controller: controller.scrollController,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return controller.bl
                          ? Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: controller.clock,
                            )
                          : null;
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return controller2.crossAxisCount == 1
                          ? CClockItems(
                              clock: ClockModel(
                                name: '$index i $index',
                                time: DateTime.now(),
                                isActive: index.isEven,
                                days: Days(days: [
                                  index.isEven
                                      ? Weekdays(weekdays: EnumWeekdays.FRIDAY)
                                      : Weekdays(weekdays: EnumWeekdays.MONDAY),
                                ], isEvery: index.isEven),
                              ),
                            )
                          : Row(
                              children: [
                                CallClockItems(index: index * 2),
                                if (controller2.items.length != index * 2 + 1)
                                  CallClockItems(index: index * 2 + 1)
                                else
                                  const Expanded(child: SizedBox.shrink()),
                              ],
                            );
                    },
                    childCount: controller2.crossAxisCount == 2
                        ? controller2.items.length ~/
                                controller2.crossAxisCount +
                            (controller2.items.length.isOdd ? 1 : 0)
                        : controller2.items.length,
                  ),
                ),
                SliverAppBar(
                  // snap: true,
                  pinned: !(controller.bl),
                  backgroundColor: Colors.white,
                  title: (!controller.bl) ? controller.clock : null,
                  toolbarHeight: (!controller.bl) ? 40 : 0,
                ),
                // CAppBarClock(),
              ],
            );
          },
        );
      },
    );
  }
}
