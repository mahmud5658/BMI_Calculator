import 'package:flutter/material.dart';

class SecBtn extends StatelessWidget {
  final VoidCallback onpress;
  final IconData iconData;
  const SecBtn({super.key, required this.onpress, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Icon(
          iconData,
          color: Theme.of(context).colorScheme.primaryContainer,
          size: 20,
        ),
      ),
    );
  }
}
