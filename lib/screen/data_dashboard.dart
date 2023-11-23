import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../core/style/color_style.dart';

class DataDashboard extends StatefulWidget {
  final bool isIcon;
  const DataDashboard({Key? key, required this.isIcon}) : super(key: key);

  @override
  State<DataDashboard> createState() => _DataDashboardState();
}


class _DataDashboardState extends State<DataDashboard> {

  bool isDashboard = false;
  bool isSecondMenu = false;
  bool isMouseRegin = false;

  int numberI = -1;
  int numberJ = -1;
  int numberRow = 0;


  @override
  Widget build(BuildContext context) {
    final List<IconData> icon = [Icons.shutter_speed, Icons.apple_sharp, Icons.layers];
    TextStyle textStyleOne = const TextStyle(
        fontWeight: FontWeight.w500, color: ColorsStyle.colorOne, fontSize: 15);
    TextStyle textStyleOff = const TextStyle(
      fontWeight: FontWeight.w500,
      color: ColorsStyle.colorOff,
      fontSize: 15,
    );
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                int over = 0;
                setState(() {
                  isDashboard = !isDashboard;
                  if (isDashboard == false) {
                    isSecondMenu == false;
                    numberI = -1;
                    numberJ = -1;
                  }
                  over = numberRow;
                  numberRow = index;
                  if (numberRow != over) {
                    isDashboard = !isDashboard;
                  }
                });
              },
              child: MouseRegion(
                onHover: (PointerHoverEvent event) {
                  int mouseRegion = -1;
                  setState(() {
                    mouseRegion = index;
                    if (mouseRegion == index && isDashboard == false) {
                      numberRow = index;
                      isMouseRegin = true;
                    }
                  });
                },
                onExit: (PointerExitEvent event) {
                  setState(() {
                    isMouseRegin = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                     widget.isIcon?
                        Icon(
                          icon[index],
                          color: isDashboard == true && numberRow == index ||
                              isMouseRegin && numberRow == index
                              ? ColorsStyle.colorOne
                              : ColorsStyle.colorOff,
                        ):const SizedBox(),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Dashboard",
                          style: isDashboard == true && numberRow == index ||
                              isMouseRegin && numberRow == index
                              ? textStyleOne
                              : textStyleOff,
                        ),
                      ],
                    ),
                    Icon(
                      isDashboard == true && numberRow == index
                          ? Icons.arrow_drop_down_rounded
                          : Icons.arrow_right,
                      color: isDashboard == true && numberRow == index ||
                          isMouseRegin && numberRow == index
                          ? ColorsStyle.colorOne
                          : ColorsStyle.colorOff,
                    )
                  ],
                ),
              ),
            ),
            Visibility(
                visible: isDashboard && numberRow == index,
                child: Column(
                  children: [
                    for (int i = 0; i < 6; i++)
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isSecondMenu = !isSecondMenu;
                              numberI = i;
                              if (isSecondMenu == false) {
                                numberI = -1;
                              }
                            });
                          },
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.linear_scale,
                                        color:
                                        isDashboard == true && numberI == i
                                            ? ColorsStyle.colorOne
                                            : ColorsStyle.colorOff,
                                        size: 10,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "oneMenu",
                                        style:
                                        isSecondMenu == true && numberI == i
                                            ? textStyleOne
                                            : textStyleOff,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Visibility(
                                  visible: isSecondMenu && numberI == i,
                                  child: Column(
                                    children: [
                                      for (int j = 0; j < 4; j++)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 20,
                                            left: 20,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              isSecondMenu = !isSecondMenu;
                                              numberJ = j;
                                              if (isSecondMenu == false) {
                                                numberJ == -1;
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.circle_outlined,
                                                  color: isSecondMenu == true &&
                                                      numberJ == j
                                                      ? ColorsStyle.colorOne
                                                      : ColorsStyle.colorOff,
                                                  size: 5,
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  "isSecondMenu",
                                                  style: textStyleOff,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
          ],
        );
      },
    );
  }
}

