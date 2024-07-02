import 'package:bmi/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class ThemeChangerBtn extends StatelessWidget {
  const ThemeChangerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: InkWell(
            onTap: () {
              themeController.changeTheme();
            },
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.dark_mode,
                    color: themeController.isDark.value
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  onPressed: () {
                    themeController.changeTheme();
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.light_mode,
                    color: themeController.isDark.value
                        ? Theme.of(context).colorScheme.onSecondaryContainer
                        : Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: () {
                    themeController.changeTheme();
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
