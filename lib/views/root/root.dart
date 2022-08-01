import 'dart:io';

import 'package:clockapp/views/root/android/android_root.dart';
import 'package:clockapp/views/root/ios/ios_root.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? const AndroidRoot(): const IosRoot();
  }
}
