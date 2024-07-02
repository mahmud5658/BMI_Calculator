import 'package:bmi/components/react_btn.dart';
import 'package:bmi/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text("Back"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Obx(
                    () => Text(
                      'Your BMI is',
                      style: TextStyle(
                          fontSize: 28,
                          color: bmiController.color_status.value,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                child: Expanded(
                  child: Obx(
                    () => CircularPercentIndicator(
                      footer: Obx(
                        () => Text(
                          '${bmiController.bmi_status.value}',
                          style: TextStyle(
                              color: bmiController.color_status.value,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      radius: 130.0,
                      lineWidth: 30.0,
                      animation: true,
                      animationDuration: 1000,
                      percent: bmiController.bmi.value / 100,
                      center: new Text(
                        '${bmiController.bmi.value.toStringAsFixed(1)}%',
                        style: TextStyle(
                            color: bmiController.color_status.value,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      progressColor: bmiController.color_status.value,
                      backgroundColor: bmiController.color_status.value
                          .withOpacity(0.2),
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Text(
                    'Your BMI is 20.7, indicating your weight is in the Normal category for adults of your height.  For your height, a normal weight range wouldbe from 53.5 to 72 kilograms.Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.'),
              ),
              SizedBox(
                height: 20,
              ),
              ReactBtn(
                  iconData: Icons.arrow_back_ios_new_outlined,
                  btnName: 'Find Out More',
                  onpress: () {
                    Get.back();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
