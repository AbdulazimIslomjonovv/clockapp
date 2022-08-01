import 'package:clockapp/models/clock_model.dart';
import 'package:clockapp/utils/app_styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CClockItems extends StatelessWidget {
  final ClockModel clock;
  final DateFormat _formatDate = DateFormat('kk:mm');

  CClockItems({Key? key, required this.clock}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    return Neumorphic(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      style: NeumorphicStyle(
        shadowLightColor: Color(isDarkMode ? 0xff3F4850 : 0xffEEF0F5),
        intensity: 10,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        color: Color(isDarkMode ? 0xff3F4850 : 0xffEEF0F5),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(isDarkMode ? 0xff5D666D : 0xffFFFFFF),
              Color(isDarkMode ? 0xff242B31 : 0xffBAC3CF),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _formatDate.format(clock.time),
              style: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                // color: Color(0xff646E82),
              ),
            ),
            Row(
              children: [
                SelectableText('${clock.days.days.map((e) => e.firstLatter)}'),
                Transform.scale(
                  scale: 1.5,
                  child: Switch.adaptive(
                    activeTrackColor: const Color(0xffFD2A22),
                    inactiveTrackColor:
                        isDarkMode ? Colors.black54 : const Color(0xffA6B4C8),
                    activeColor: Color(isDarkMode ? 0xffA2ADB9 : 0xffEEF0F5),
                    inactiveThumbColor:
                        Color(isDarkMode ? 0xff4E565F : 0xffEEF0F5),
                    value: clock.isActive,
                    onChanged: (b) {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
