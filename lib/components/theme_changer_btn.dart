import 'package:flutter/material.dart';

class ThemeChangerBtn extends StatelessWidget {
  const ThemeChangerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.dark_mode),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.light_mode),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
