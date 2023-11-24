import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';

import 'lanle_container.dart';

class ContainerTask extends StatelessWidget {
    final  String updateDate;
    final String path;
    final String issue;
    final  String information;
    final  double width;
    final double width2;
  const ContainerTask({Key? key, required this.updateDate, required this.path, required this.issue, required this.information, required this.width, required this.width2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: ColorsStyle.colorOne,
        width: width > 1300 ? (width - 284) / 4 : width2,
        child: Column(
          children: [
            HeaderContainer(headerName: issue,iconColor:Colors.red,colorContainer: ColorsStyle.secondaryColor, ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 40,
                    height: 40,
                    child: Image.asset(path)),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  ListTile(
                    title: Text("name"),
                    subtitle: Text(information),
                  )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: DottedDecoration(linePosition: LinePosition.top),
              height: 0,
              width: 440,
            ),
          ],
        ),
      ),
    );
  }
}
