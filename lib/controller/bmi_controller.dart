import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BmiController extends GetxController {
  RxString Gender = "MALE".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 150.0.obs;
  RxDouble bmi = 0.0.obs;
  RxString bmi_status = "".obs;
  Rx<Color> color_status = Color(0xff246AFE).obs;

  void genderHandle(String gender) {
    Gender.value = gender;
  }

  void calculateBMI() {
    var h_meter = height / 100;
    bmi.value = weight / (h_meter * h_meter);
    findStatus();
  }

  void findStatus() {
    if (bmi.value < 18.5) {
      bmi_status.value = 'UnderWeight';
      color_status.value = Color(0xffFF8800);
    }
    if (bmi.value > 18.5 && bmi.value < 24.9) {
      bmi_status.value = 'Normal';
      color_status.value = Color(0xff00CA39);
    }
    if (bmi.value > 25.0 && bmi.value < 29.9) {
      bmi_status.value = 'OverWeight';
      color_status.value = Color(0xffFF5858);
    }
    if (bmi.value > 30.0 && bmi.value < 34.9) {
      bmi_status.value = 'OBESE';
      color_status.value = Color(0xffFF0000);
    }
    if (bmi.value > 35.0) {
      bmi_status.value = 'Extremely OBESE';
      color_status.value = Color(0xff000000);
    }
  }
}
