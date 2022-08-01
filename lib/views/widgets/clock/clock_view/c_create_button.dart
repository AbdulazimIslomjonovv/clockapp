import 'package:clockapp/utils/const_paths/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../utils/app_styles/app_theme.dart';

class CCreateButton extends StatelessWidget {
  const CCreateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;
    return NeumorphicButton(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      style: const NeumorphicStyle(
        // color: Colors.white,
        // shadowDarkColor: Colors.black54,
        // shape: NeumorphicShape.flat,
        // shadowLightColor: Colors.white,
        // intensity: 1,
        // surfaceIntensity: 1,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(isDarkMode ? 0xff5D666D : 0xffE4E8F1),
              Color(isDarkMode ? 0xff21272D : 0xffE6E9EF),
            ],
          ),
        ),
        child: Neumorphic(
          padding: const EdgeInsets.all(2),
          style: NeumorphicStyle(
            color: Color(isDarkMode ? 0xff21272D : 0xffA6B4C8),
            boxShape: const NeumorphicBoxShape.circle(),
          ),
          child: Neumorphic(
            padding: const EdgeInsets.all(5),
            style: const NeumorphicStyle(
              color: Color(0xffFD2B23),
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: Neumorphic(
              padding: const EdgeInsets.all(17),
              style: const NeumorphicStyle(
                color: Color(0xffFD2B23),
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: SvgPicture.asset(
                Ic.add,
                color: Colors.white,
                height: 25,
              ),
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
