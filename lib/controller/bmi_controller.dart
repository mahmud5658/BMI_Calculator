import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BmiController extends GetxController {
  RxString Gender = "MALE".obs;

  void genderHandle(String gender) {
    Gender.value = gender;
  }
}
