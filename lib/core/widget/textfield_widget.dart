import 'dart:core';

import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';
class TextFieldWidget extends StatelessWidget {
 final ValueChanged<String>? value;
 final String text;
 final BorderSide borderSide;
 final Widget? prefixIcon;
 Widget? suffixIcon;
 
 TextFieldWidget({Key? key, this.value, required this.text, required this.borderSide, required this.prefixIcon,this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        onChanged: value,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(borderSide: borderSide),
          suffixIcon: suffixIcon,
          suffixIconColor: Colors.white,
          labelText: text,
          // suffixIcon: Icon(Icons.search_rounded),
          labelStyle: const TextStyle(color: ColorsStyle.gray),
        ),
      ),
    );
  }
}
