import 'dart:async';
import 'dart:math';

// import 'package:flutter_neumorphic/flutter_neumorphic.dart'

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:provider/provider.dart';

import '../../../../utils/app_styles/app_theme.dart';
import 'c_clock_painter.dart';

class CClock extends StatefulWidget {
  const CClock({Key? key}) : super(key: key);

  @override
  _CClockState createState() => _CClockState();
}

class _CClockState extends State<CClock> {
  bool isPressed = false;

  Color backgroundColor = Color(0xffe7ecef);

  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    double blur = isPressed ? 5.0 : 30.0;
    Offset distance = isPressed ? const Offset(10, 10) : const Offset(28, 28);
    return SizedBox(
      width: 320,
      height: 320,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff353D45),
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color(isDarkMode ? 0xff353D45 : 0xffecf6ff),
                Color(isDarkMode ? 0xff333B43 : 0xffcadbeb)
              ], begin: Alignment.topCenter, end: Alignment.bottomRight),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(isDarkMode ? 0.6 : 0.2),
                  blurRadius: 32,
                  spreadRadius: 1,
                  offset: const Offset(30, 20),
                ),
                BoxShadow(
                  color:
                      isDarkMode ? Colors.black.withOpacity(0.3) : Colors.white,
                  blurRadius: 32,
                  spreadRadius: 1,
                  offset: Offset(-20, -10),
                ),
              ],
            ),
          ),
          Container(
            width: 140,
            height: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff353D45),
                gradient: LinearGradient(colors: [
                  Color(isDarkMode ? 0xff353D45 : 0xffecf6ff),
                  Color(isDarkMode ? 0xff333B43 : 0xffcadbeb),
                ], begin: Alignment.topCenter, end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(isDarkMode ? 0.6 : 0.2),
                    blurRadius: 32,
                    spreadRadius: 1,
                    offset: const Offset(30, 20),
                  ),
                  BoxShadow(
                    color: isDarkMode ? Colors.black.withOpacity(0.3) : Colors.white,
                    blurRadius: 32,
                    spreadRadius: 1,
                    offset: Offset(-20, -10),
                  ),
                ]),
          ),
          Container(
            constraints: const BoxConstraints.expand(height: 320, width: 320),
            child: Transform.rotate(
                angle: -pi / 2, child: CustomPaint(painter: ClockPainter(context))),
          )
        ],
      ),
    );
  }
}
