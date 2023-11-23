import 'dart:core';

import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';
class TextFieldWidget extends StatelessWidget {
 final ValueChanged<String>? value;
 final String text;
 final BorderSide borderSide;
 final Widget icon;
  const TextFieldWidget({Key? key, this.value, required this.text, required this.borderSide, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        onChanged: value,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          prefixIcon: icon,
          border: OutlineInputBorder(borderSide: borderSide),
          labelText: text,
          // suffixIcon: Icon(Icons.search_rounded),
          labelStyle: const TextStyle(color: ColorsStyle.gray),
        ),
      ),
    );
  }
}
