import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final IconData iconData;
  final String btnName;
  final VoidCallback onpress;
  const PrimaryBtn({
    super.key,
    required this.iconData,
    required this.btnName, required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData, color: Theme.of(context).colorScheme.background),
              Text(
                btnName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Theme.of(context).colorScheme.background),
              )
            ],
          ),
        ),
      ),
    );
  }
}
