
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Color? colorBack;
  final double width;
  final double height;
  final double radius;
  final  Widget widget;
  const ContainerWidget({Key? key, this.colorBack, required this.width, required this.height, required this.radius,  required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorBack??Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: widget,
    );
  }
}
