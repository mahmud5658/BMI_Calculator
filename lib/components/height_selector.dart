import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height(CM)',
                  style: TextStyle(
                      fontSize: 18,
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ],
            ),
            Expanded(
              child: SfSlider.vertical(
                min: 100.0,
                max: 500.0,
                value: 200,
                interval: 50,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
