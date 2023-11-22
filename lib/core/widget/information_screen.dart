import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';
class informationScreen extends StatelessWidget {
  const informationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Project",
          style: TextStyle(color: ColorsStyle.grayDark),
        ),
        Icon(Icons.arrow_right),
        Text(
          "ProjectList",
          style: TextStyle(color: ColorsStyle.gray),
        ),
      ],
    );
  }
}
