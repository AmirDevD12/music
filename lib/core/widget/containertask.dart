import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';

import 'container_widget.dart';
import 'lanle_container.dart';
import 'line_progres.dart';

class ContainerTask extends StatelessWidget {
    final  String updateDate;
    final String path;
    final String issue;
    final  String information;
    final Color backImage;
  const ContainerTask({Key? key, required this.updateDate, required this.path, required this.issue, required this.information, required this.backImage,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double changWith = screenWidth / 3;
    if (screenWidth < 1300 && screenWidth > 1000) {
      changWith = (screenWidth - 252) / 2;
    }
    if (screenWidth < 1000) {
      changWith = (screenWidth - 92) / 2;
    }
    if (screenWidth < 510) {
      changWith = screenWidth;
    }
    return     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: ColorsStyle.colorOne,
        width: screenWidth > 1300 ? (screenWidth - 284) / 4 : changWith,
        child: Column(
          children: [
            HeaderContainer(headerName: issue,iconColor:ColorsStyle.secondaryColor,colorContainer: backImage, ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ContainerWidget(width: 40, height: 40, radius: 5,colorBack:backImage ,
                        widget:Image.asset(path) ,),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: const Text("name"),
                              subtitle: Text(information),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Task"),
                      Row(
                        children: [
                          Icon(Icons.menu,size: 15,),
                          Text("18/42")
                        ],
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(child: LineProgress()),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: DottedDecoration(linePosition: LinePosition.top),
                    width: 440,
                  ),
                  const SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerWidget(width: 25, height: 25, radius: 100,colorBack: Colors.red, widget:
                      ClipOval(child: Image.asset("assets/images/avatar-4.png",fit: BoxFit.cover,))),
                      const Row(
                        children: [
                          Icon(Icons.calendar_month_sharp,size: 15,color: ColorsStyle.secondaryColor),
                          SizedBox(width: 5,),
                          Text("21 Feb, 2021",style: TextStyle(color: ColorsStyle.secondaryColor,fontSize: 13),)
                        ],
                      )

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
