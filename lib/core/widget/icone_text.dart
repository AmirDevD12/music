
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData iconWidget;
  final String text;
  const IconText({Key? key, required this.iconWidget, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconWidget,color: Colors.white,size: 15,),
        const SizedBox(width: 5,),
        Text(text,style: const TextStyle(color: Colors.white),),
      ],
    );
  }
}
