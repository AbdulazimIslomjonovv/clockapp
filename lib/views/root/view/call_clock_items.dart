import 'package:clockapp/views/widgets/clock/clock_view/c_clock_items.dart';
import 'package:flutter/material.dart';

import '../../../../../models/clock_model.dart';
import '../../../../../utils/app_enums/app_enums.dart';

class CallClockItems extends StatelessWidget {
  final int index;

  const CallClockItems({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CClockItems(
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
      ),
    );
  }
}
