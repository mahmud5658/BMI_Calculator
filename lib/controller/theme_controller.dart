import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;
  void changeTheme() async {
    isDark.value = !isDark.value;

    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
