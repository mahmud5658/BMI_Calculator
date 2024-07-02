import 'package:bmi/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class PrimaryBtn extends StatelessWidget {
  final IconData iconData;
  final String btnName;
  final VoidCallback onpress;
  const PrimaryBtn({
    super.key,
    required this.iconData,
    required this.btnName,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Obx(
          () => Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bmiController.Gender.value == btnName
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.primaryContainer),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconData,
                    color: bmiController.Gender.value == btnName
                        ? Theme.of(context).colorScheme.primaryContainer
                        : Theme.of(context).colorScheme.primary),
                Text(
                  btnName,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      color: bmiController.Gender.value == btnName
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.primary),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
