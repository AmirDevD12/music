import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSecondMenu = false;
  bool sizeShow = true;
  bool isTextField = false;

  int flx = 70;
  int mouse = -1;
  int stack = -1;

  double topPosition = 30;
  double size = 0;

  List<IconData> icon = [Icons.shutter_speed, Icons.apple_sharp, Icons.layers];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double changWith = screenWidth / 3;
    if (screenWidth < 1300 && screenWidth > 1000) {
      changWith = (screenWidth - 252) / 2;
    }
    if (screenWidth < 1000) {
      changWith = (screenWidth - 82) / 2;
    }
    if (screenWidth < 510) {
      changWith = screenWidth;
    }

    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Row(
            children: [
              Visibility(
                visible: screenWidth > 720 ||
                    size == screenWidth &&
                        screenWidth < 720 &&
                        showDashboard == true,
                child: SizedBox(
                  width: showDashboard == true &&
                              screenWidth > 1000 &&
                              size != screenWidth ||
                          sizeShow == false &&
                              size == screenWidth &&
                              screenWidth > 1000 &&
                              sizeShow != showDashboard ||
                          size != screenWidth && screenWidth > 1000 ||
                          size == screenWidth &&
                              screenWidth < 1000 &&
                              screenWidth > 700 &&
                              sizeShow == showDashboard ||
                          sizeShow != showDashboard &&
                              screenWidth > 1000 &&
                              size != screenWidth &&
                              size != 0 ||
                          size == screenWidth &&
                              screenWidth < 700 &&
                              showDashboard == true ||
                          sizeShow != showDashboard &&
                              size == screenWidth &&
                              size != 0 &&
                              screenWidth < 1000 &&
                              screenWidth > 700
                      ? 220
                      : 50,
                  child: Positioned(
                    child: Container(
                      height: height,
                      color: ColorsStyle.backgroundDashboard,
                      child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: showDashboard == true &&
                                        screenWidth > 1000 &&
                                        size != screenWidth ||
                                    sizeShow == false &&
                                        size == screenWidth &&
                                        screenWidth > 1000 &&
                                        sizeShow != showDashboard ||
                                    size != screenWidth && screenWidth > 1000 ||
                                    size == screenWidth &&
                                        screenWidth < 1000 &&
                                        screenWidth > 700 &&
                                        sizeShow == showDashboard ||
                                    sizeShow != showDashboard &&
                                        screenWidth > 1000 &&
                                        size != screenWidth &&
                                        size != 0 ||
                                    size == screenWidth &&
                                        screenWidth < 700 &&
                                        showDashboard == true ||
                                    sizeShow != showDashboard &&
                                        size == screenWidth &&
                                        size != 0 &&
                                        screenWidth < 1000 &&
                                        screenWidth > 700
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 300,
                                        height: 110,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      50, 20, 20, 40),
                                              child: Image.asset(
                                                  "assets/images/logo-dark.png",
                                                  height: 20,
                                                  width: 100,
                                                  color: ColorsStyle.colorOne),
                                            ),
                                            const Text(
                                              "MENU",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: ColorsStyle.colorOff,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 300,
                                        height: height,
                                        child: const DataDashboard(),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )
                                : Positioned(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          height: height - 100,
                                          child: ListView.builder(
                                            itemCount: icon.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              int mouseRegion = -1;
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 22),
                                                child: MouseRegion(
                                                    onHover: (PointerHoverEvent
                                                        event) {
                                                      // رویداد mouseover

                                                      setState(() {
                                                        mouseRegion = index;
                                                        if (mouseRegion ==
                                                                index &&
                                                            isDashboard ==
                                                                false) {
                                                          numberRow = index;
                                                          isMouseRegin = true;
                                                          stack = index;
                                                          topPosition =
                                                              30 * (stack + 1);
                                                          if (index > 0) {
                                                            topPosition += 20;
                                                          }
                                                        }
                                                      });
                                                    },
                                                    onExit: (PointerExitEvent
                                                        event) {
                                                      setState(() {
                                                        isMouseRegin = false;
                                                        topPosition =
                                                            30 * (stack + 1);
                                                        if (index > 0) {
                                                          topPosition += 20;
                                                        }
                                                      });
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          icon[index],
                                                          color: isMouseRegin ==
                                                                      true &&
                                                                  numberRow ==
                                                                      index
                                                              ? ColorsStyle
                                                                  .colorOne
                                                              : ColorsStyle
                                                                  .colorOff,
                                                        ),
                                                        // ))
                                                      ],
                                                    )),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: showDashboard == true && screenWidth > 1000 ||
                          sizeShow == false && size == screenWidth ||
                          sizeShow == true &&
                              showDashboard == true &&
                              size == screenWidth ||
                          sizeShow == true &&
                              showDashboard == false &&
                              screenWidth > 1000 &&
                              size != screenWidth &&
                              size != 0 ||
                          size == screenWidth &&
                              screenWidth < 700 &&
                              showDashboard == true
                      ? 13
                      : 70,
                  child: Column(
                    children: [
                      Container(
                        color: ColorsStyle.colorOne,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 70,
                              child: IconButton(
                                  onPressed: () {
                                    double betweenSize;
                                    setState(() {
                                      if (screenWidth < 1000 &&
                                          screenWidth > 700) {
                                        setState(() {
                                          sizeShow = !sizeShow;
                                          showDashboard = !showDashboard;
                                          betweenSize = size;
                                          size = screenWidth;

                                          if (size == betweenSize) {
                                            setState(() {
                                              size = 0;
                                            });
                                          }
                                        });
                                      } else if (screenWidth > 1000) {
                                        setState(() {
                                          sizeShow = !sizeShow;
                                          showDashboard = !showDashboard;
                                          betweenSize = size;
                                          size = screenWidth;
                                          if (size == betweenSize) {
                                            setState(() {
                                              size = 0;
                                            });
                                          }
                                        });
                                      } else if (screenWidth < 700) {
                                        setState(() {
                                          showDashboard = !showDashboard;
                                          size = screenWidth;
                                        });
                                      }
                                    });
                                  },
                                  icon: Icon(showDashboard == true &&
                                              screenWidth > 1000 &&
                                              size != screenWidth &&
                                              sizeShow != showDashboard ||
                                          sizeShow == false &&
                                              size == screenWidth &&
                                              screenWidth > 1000 &&
                                              sizeShow != showDashboard ||
                                          size != screenWidth &&
                                              screenWidth > 1000 &&
                                              showDashboard == true ||
                                          size == screenWidth &&
                                              screenWidth < 1000 &&
                                              screenWidth > 700 &&
                                              sizeShow == showDashboard ||
                                          sizeShow != showDashboard &&
                                              screenWidth > 1000 &&
                                              size != screenWidth &&
                                              size != 0 ||
                                          size == screenWidth &&
                                              screenWidth < 700 &&
                                              showDashboard == true ||
                                          sizeShow != showDashboard &&
                                              size == screenWidth &&
                                              size != 0 &&
                                              screenWidth < 1000 &&
                                              screenWidth > 700
                                      ? Icons.arrow_forward
                                      : Icons.menu)),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  screenWidth > 720
                                      ? Expanded(
                                          flex: 2,
                                          child: Row(
                                            children: [
                                              screenWidth < 850
                                                  ? Expanded(
                                                      flex: 1,
                                                      child: Container(
                                                        decoration: const BoxDecoration(
                                                            color: ColorsStyle
                                                                .colorBox,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        child: textField(
                                                            (value) {},
                                                            "search...",
                                                            BorderSide.none,
                                                            const Icon(
                                                                Icons.search)),
                                                      ))
                                                  : Container(
                                                      decoration: const BoxDecoration(
                                                          color: ColorsStyle
                                                              .colorBox,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                      width: 300,
                                                      height: 40,
                                                      child: textField(
                                                          (value) {},
                                                          "search...",
                                                          BorderSide.none,
                                                          const Icon(
                                                              Icons.search)),
                                                    ),
                                            ],
                                          ),
                                        )
                                      : Container(),
                                  Expanded(
                                    flex: screenWidth < 1000 ? 3 : 2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        screenWidth < 720
                                            ? Container(
                                                decoration: const BoxDecoration(
                                                    color: ColorsStyle
                                                        .backSearchButton,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                12))),
                                                child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        isTextField =
                                                            !isTextField;
                                                      });
                                                    },
                                                    icon: const Icon(
                                                        Icons.search)),
                                              )
                                            : Container(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: SizedBox(
                                              width: 30,
                                              child: Image.asset(
                                                  "assets/images/avatar-4.png")),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        iconButton(Icons.add_business_rounded),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        iconButton(
                                            Icons.shopping_basket_rounded),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        iconButton(Icons.filter_center_focus),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        iconButton(Icons.calendar_month_sharp),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        iconButton(Icons.add_alert_sharp),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        InkWell(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: screenWidth > 700
                                                    ? ColorsStyle.colorBox
                                                    : ColorsStyle.colorOne,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(5))),
                                            child: SizedBox(
                                              width:
                                                  screenWidth > 1300 ? 150 : 50,
                                              child: Row(
                                                children: [
                                                  iconButton(Icons.person),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  screenWidth > 1300
                                                      ? const Text(
                                                          "Amir is king")
                                                      : Container()
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorsStyle.colorOne,
                            border: Border.all(color: ColorsStyle.black12)),
                        height: screenWidth > 600 ? 40 : 70,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "ProjectList",
                                  style: TextStyle(
                                      color: ColorsStyle.grayDark,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                screenWidth < 600
                                    ? informationScreen()
                                    : Container()
                              ],
                            ),
                            const Spacer(),
                            Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: screenWidth > 600
                                    ? informationScreen()
                                    : Container())
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Wrap(
                          children: <Widget>[
                            for (int i = 0; i < 8; i++)
                              containerTask(
                                  "Updated 3hrs ago",
                                  "assets/images/avatar-10.jpg",
                                  "Slack brand logo design",
                                  "Create a Brand logo design for a   admin.",
                                  screenWidth,
                                  changWith),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),

          ///menu Dashboard
          Positioned(
              top: topPosition,
              left: 50,
              child: isMouseRegin == true
                  ? MouseRegion(
                      onHover: (PointerHoverEvent event) {
                        // رویداد mouseover

                        setState(() {
                          isMouseRegin = true;
                        });
                      },
                      onExit: (PointerExitEvent event) {
                        setState(() {
                          isMouseRegin = false;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 40,
                        color: ColorsStyle.backgroundDashboard,
                        child: const Center(
                            child: Text(
                          "KING",
                          style: TextStyle(color: ColorsStyle.colorOne),
                        )),
                      ),
                    )
                  : Container()),

          ///hide textField
          Positioned(
              left: screenWidth < 650 && screenWidth > 600 ? 250 : 0,
              top: 70,
              child: screenWidth < 720 && isTextField == true
                  ? Container(
                      width: screenWidth < 600 ? screenWidth : 350,
                      height: 60,
                      decoration: BoxDecoration(
                          color: ColorsStyle.colorOne,
                          borderRadius: BorderRadius.all(
                              Radius.circular(screenWidth < 600 ? 0 : 5))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenWidth < 600 ? screenWidth - 100 : 300,
                            height: 40,
                            child: textField(
                              (value) {},
                              "search...",
                              const BorderSide(color: ColorsStyle.gray),
                              Container(
                                width: 40,
                                height: 40,
                                color: ColorsStyle.backgroundDashboard,
                                child: const Icon(
                                  Icons.search,
                                  color: ColorsStyle.colorOne,
                                  size: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container())
        ],
      ),
    );
  }

  Widget textField(
    ValueChanged<String>? value,
    String text,
    BorderSide borderSide,
    Widget icon,
  ) {
    return SizedBox(
      height: 40,
      child: TextField(
        onChanged: value,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          suffixIcon: icon,
          border: OutlineInputBorder(borderSide: borderSide),
          labelText: text,
          // suffixIcon: Icon(Icons.search_rounded),
          labelStyle: const TextStyle(color: ColorsStyle.gray),
        ),
      ),
    );
  }

  Widget iconButton(
    IconData icon,
  ) {
    return IconButton(
        hoverColor: ColorsStyle.focusColor,
        onPressed: () {},
        icon: Icon(
          icon,
          color: ColorsStyle.black38,
        ));
  }
}

Widget informationScreen() {
  return const Row(
    children: [
      Text(
        "Project",
        style: TextStyle(color: ColorsStyle.black38),
      ),
      Icon(Icons.arrow_right),
      Text(
        "ProjectList",
        style: TextStyle(color: ColorsStyle.gray),
      ),
    ],
  );
}

Widget containerTask(String updateDate, String path, String issue,
    String information, double width, double width2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: ColorsStyle.colorOne,
      width: width > 1300 ? (width - 284) / 4 : width2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(updateDate),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: ColorsStyle.yellow,
                    )),
                PopupMenuButton(onSelected: (value) {
                  // your logic
                }, itemBuilder: (BuildContext bc) {
                  return const [
                    PopupMenuItem(
                      value: '/hello',
                      child: Text("Edite"),
                    ),
                    PopupMenuItem(
                      value: '/hello',
                      child: Text("view"),
                    ),
                    PopupMenuItem(
                      value: '/hello',
                      child: Text("Delete"),
                    ),
                  ];
                })
              ],
            ),
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
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        information,
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
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    ),
  );
}

class DataDashboard extends StatefulWidget {
  const DataDashboard({Key? key}) : super(key: key);

  @override
  State<DataDashboard> createState() => _DataDashboardState();
}

bool showDashboard = true;
bool isDashboard = false;
bool isSecondMenu = false;
bool isMouseRegin = false;

int numberI = -1;
int numberJ = -1;
int numberRow = 0;

List<IconData> icon = [Icons.shutter_speed, Icons.apple_sharp, Icons.layers];

class _DataDashboardState extends State<DataDashboard> {
  @override
  Widget build(BuildContext context) {
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
                        Icon(
                          icon[index],
                          color: isDashboard == true && numberRow == index ||
                                  isMouseRegin && numberRow == index
                              ? ColorsStyle.colorOne
                              : ColorsStyle.colorOff,
                        ),
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

class ColorsStyle {
  static const Color colorOff = Color(0xffabb9e8);
  static const Color backgroundDashboard = Color(0xff405189);
  static const Color colorBox = Color(0xffe5e5f2);
  static const Color focusColor = Color(0xffaec9f9);
  static const Color backSearchButton = Color(0xffdaf4f0);
  static const Color grayDark = Color(0xff343a40);
  static const Color colorOne = Colors.white;
  static const Color black38 = Colors.black38;
  static const Color gray = Colors.grey;
  static const Color black12 = Colors.black12;
  static const Color yellow = Colors.yellowAccent;
}
