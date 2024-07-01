import 'package:bmi/components/age_selector.dart';
import 'package:bmi/components/height_selector.dart';
import 'package:bmi/components/primary_btn.dart';
import 'package:bmi/components/theme_changer_btn.dart';
import 'package:bmi/components/weight_selector.dart';
import 'package:bmi/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ThemeChangerBtn(),
            Row(
              children: [
                Text(
                  "Welcome 👋",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                PrimaryBtn(onpress: (){},iconData: Icons.male, btnName: 'MALE',),
                const SizedBox(
                  width: 20,
                ),
                PrimaryBtn(onpress: (){},iconData: Icons.female, btnName: 'FEMALE',),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeightSelector(),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WeightSelector(),
                        SizedBox(height: 30,),
                        AgeSelector(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: PrimaryBtn(
                onpress: (){},
                iconData: Icons.done,
                btnName: 'LETS GO',
              ),
            )
          ],
        ),
      )),
    );
  }
}
