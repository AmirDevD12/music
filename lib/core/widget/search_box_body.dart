import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';
import 'package:untitled/core/widget/textfield_widget.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Container(
      width: 300,
      decoration:  BoxDecoration(
          color: ColorsStyle.colorOne,
          border: Border.all(color: ColorsStyle.colorBox,width: 1),
          borderRadius: const BorderRadius.all(
              Radius.circular(5))),
      child: TextFieldWidget(
              value:(value) {},
          text:"search...",
         borderSide: BorderSide.none,
         icon: const Icon(Icons.search,color: ColorsStyle.secondaryColor,size: 17,)),
    );
  }
}
