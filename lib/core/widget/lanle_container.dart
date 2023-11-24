import 'package:flutter/material.dart';
import 'package:untitled/core/widget/popmenu.dart';
class HeaderContainer extends StatelessWidget {
  final Color? colorContainer;
  final String headerName;
  final Color  iconColor;
  const HeaderContainer({Key? key, this.colorContainer, required this.headerName, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorContainer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Text(headerName)),
            Icon(Icons.star,color:iconColor,size: 15,),
            const SizedBox(width: 10,),
            PopupMenuButtonWidget(value: (value){},)
          ],
        ),
      ),
    );
  }
}
