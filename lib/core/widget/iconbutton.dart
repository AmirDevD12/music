import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';
class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  const IconButtonWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: ColorsStyle.focusColor,
        onPressed: () {},
        icon: Icon(
          icon,
          color: ColorsStyle.black38,
        ));
  }
  }

