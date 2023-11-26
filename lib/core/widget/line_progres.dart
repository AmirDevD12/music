
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:untitled/core/style/color_style.dart';

class LineProgress extends StatelessWidget {
  const LineProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StepProgressIndicator(
      totalSteps: 45,
      currentStep: 32,
      size: 8,
      padding: 0,
      selectedColor: Colors.yellow,
      unselectedColor: Colors.cyan,
      roundedEdges: Radius.circular(10),
      selectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [ColorsStyle.success40,ColorsStyle.success40],
      ),
      unselectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [ColorsStyle.secondaryColorProfile,ColorsStyle.secondaryColorProfile],
      ),
    );
  }
}
