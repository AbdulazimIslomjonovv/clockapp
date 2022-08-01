import 'package:clockapp/services/di_service.dart';
import 'package:clockapp/services/notification_service.dart';
import 'package:flutter/material.dart';

class InitService {
  static Future<void> get init async {
    WidgetsFlutterBinding.ensureInitialized();
    DIService.init;
    await NotificationService.initNotifications();
  }
}