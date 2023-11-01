import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
  bool showDashbord = true;
  bool isDashbord = false;
  bool isSecondMenu = false;
  bool sizeShow = true;
  bool littelScreen = false;
  bool beetwin = false;

  int numberI = -1;
  int numberJ = -1;
  int numberRow = -1;
  Color colorOne = Colors.white;
  Color colorOff = const Color(0xffabb9e8);
  int flx = 70;
  double size = 0;
  List<IconData> icon = [Icons.shutter_speed, Icons.apple_sharp, Icons.layers];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black12,
      body: Row(
        children: [
          Visibility(
            visible: screenWidth > 700 ||
                size == screenWidth &&
                    screenWidth < 700 &&
                    showDashbord == true,
            child: Container(
              width: showDashbord == true &&
                          screenWidth > 1200 &&
                          size != screenWidth ||
                      sizeShow == false &&
                          size == screenWidth &&
                          screenWidth > 1200 &&
                          sizeShow != showDashbord ||
                      size != screenWidth && screenWidth > 1200 ||
                      size == screenWidth &&
                          screenWidth < 1200 &&
                          screenWidth > 700 &&
                          sizeShow == showDashbord ||
                      sizeShow != showDashbord &&
                          screenWidth > 1200 &&
                          size != screenWidth &&
                          size != 0 ||
                      size == screenWidth &&
                          screenWidth < 700 &&
                          showDashbord == true ||
                      sizeShow != showDashbord &&
                          size == screenWidth &&
                          size != 0 &&
                          screenWidth < 1200 &&
                          screenWidth > 700
                  ? 220
                  : 50,
              child: Container(
                height: height,
                color: const Color(0xff405189),
                child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: showDashbord == true &&
                                  screenWidth > 1200 &&
                                  size != screenWidth ||
                              sizeShow == false &&
                                  size == screenWidth &&
                                  screenWidth > 1200 &&
                                  sizeShow != showDashbord ||
                              size != screenWidth && screenWidth > 1200 ||
                              size == screenWidth &&
                                  screenWidth < 1200 &&
                                  screenWidth > 700 &&
                                  sizeShow == showDashbord ||
                              sizeShow != showDashbord &&
                                  screenWidth > 1200 &&
                                  size != screenWidth &&
                                  size != 0 ||
                              size == screenWidth &&
                                  screenWidth < 700 &&
                                  showDashbord == true ||
                              sizeShow != showDashbord &&
                                  size == screenWidth &&
                                  size != 0 &&
                                  screenWidth < 1200 &&
                                  screenWidth > 700
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 300,
                                  height: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            50, 20, 20, 40),
                                        child: Image.asset(
                                            "assets/images/logo-dark.png",
                                            height: 20,
                                            width: 100,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "MENU",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: colorOff,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 300,
                                  height: height,
                                  child: DataDashboard(),
                                ),

                                const SizedBox(
                                  height: 15,
                                ),

                                ///ghadim
                                // InkWell(
                                //   onTap: () {
                                //     setState(() {
                                //       isDashbord = !isDashbord;
                                //       if (isDashbord == false) {
                                //         isSecondMenu == false;
                                //         numberI = -1;
                                //         numberJ = -1;
                                //       }
                                //       numberRow = 0;
                                //     });
                                //   },
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Row(
                                //         children: [
                                //           Icon(
                                //             Icons.shutter_speed,
                                //             color: isDashbord == true &&
                                //                     numberRow == 0
                                //                 ? colorOne
                                //                 : colorOff,
                                //           ),
                                //           const SizedBox(
                                //             width: 20,
                                //           ),
                                //           Text(
                                //             "Dashbord",
                                //             style: isDashbord == true &&
                                //                     numberRow == 0
                                //                 ? textStyleOne
                                //                 : textStyleOff,
                                //           ),
                                //         ],
                                //       ),
                                //       Icon(
                                //         isDashbord == true && numberRow == 0
                                //             ? Icons.arrow_drop_down_rounded
                                //             : Icons.arrow_right,
                                //         color:
                                //             isDashbord == true && numberRow == 0
                                //                 ? colorOne
                                //                 : colorOff,
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // Visibility(
                                //     visible: isDashbord && numberRow == 0,
                                //     child: Column(
                                //       children: [
                                //         for (int i = 0; i < 6; i++)
                                //           Padding(
                                //             padding: const EdgeInsets.only(
                                //               top: 20,
                                //               left: 10,
                                //             ),
                                //             child: InkWell(
                                //               onTap: () {
                                //                 setState(() {
                                //                   isSecondMenu = !isSecondMenu;
                                //                   numberI = i;
                                //                   if (isSecondMenu == false) {
                                //                     numberI = -1;
                                //                   }
                                //                 });
                                //               },
                                //               child: Column(
                                //                 children: [
                                //                   Row(
                                //                     mainAxisAlignment:
                                //                         MainAxisAlignment
                                //                             .spaceBetween,
                                //                     children: [
                                //                       Row(
                                //                         children: [
                                //                           Icon(
                                //                             Icons.linear_scale,
                                //                             color: isDashbord ==
                                //                                         true &&
                                //                                     numberI == i
                                //                                 ? colorOne
                                //                                 : colorOff,
                                //                             size: 10,
                                //                           ),
                                //                           const SizedBox(
                                //                             width: 20,
                                //                           ),
                                //                           Text(
                                //                             "onemenue",
                                //                             style: isSecondMenu ==
                                //                                         true &&
                                //                                     numberI == i
                                //                                 ? textStyleOne
                                //                                 : textStyleOff,
                                //                           ),
                                //                         ],
                                //                       ),
                                //                     ],
                                //                   ),
                                //                   Visibility(
                                //                       visible: isSecondMenu &&
                                //                           numberI == i,
                                //                       child: Column(
                                //                         children: [
                                //                           for (int j = 0;
                                //                               j < 4;
                                //                               j++)
                                //                             Padding(
                                //                               padding:
                                //                                   const EdgeInsets
                                //                                       .only(
                                //                                 top: 20,
                                //                                 left: 20,
                                //                               ),
                                //                               child:
                                //                                   InkWell(
                                //                                 onTap: () {
                                //                                   isSecondMenu =
                                //                                       !isSecondMenu;
                                //                                   numberJ = j;
                                //                                   if (isSecondMenu ==
                                //                                       false) {
                                //                                     numberJ ==
                                //                                         -1;
                                //                                   }
                                //                                 },
                                //                                 child: Row(
                                //                                   mainAxisAlignment:
                                //                                       MainAxisAlignment
                                //                                           .start,
                                //                                   children: [
                                //                                     Icon(
                                //                                       Icons
                                //                                           .circle_outlined,
                                //                                       color: isSecondMenu == true &&
                                //                                               numberJ == j
                                //                                           ? colorOne
                                //                                           : colorOff,
                                //                                       size: 5,
                                //                                     ),
                                //                                     const SizedBox(
                                //                                       width: 20,
                                //                                     ),
                                //                                     Text(
                                //                                       "isSecondMenu",
                                //                                       style:
                                //                                           textStyleOff,
                                //                                     ),
                                //                                   ],
                                //                                 ),
                                //                               ),
                                //                             ),
                                //                         ],
                                //                       ))
                                //                 ],
                                //               ),
                                //             ),
                                //           ),
                                //       ],
                                //     )),
                                // const SizedBox(
                                //   height: 15,
                                // ),

                                // const SizedBox(
                                //   height: 15,
                                // ),
                                // InkWell(
                                //   onTap: () {
                                //     setState(() {
                                //       isDashbord = !isDashbord;
                                //       if (isDashbord == false) {
                                //         isSecondMenu == false;
                                //         numberI = -1;
                                //         numberJ = -1;
                                //       }
                                //       numberRow = 1;
                                //     });
                                //   },
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Row(
                                //         children: [
                                //           Icon(
                                //             Icons.apple_sharp,
                                //             color: isDashbord == true &&
                                //                     numberRow == 1
                                //                 ? colorOne
                                //                 : colorOff,
                                //           ),
                                //           const SizedBox(
                                //             width: 20,
                                //           ),
                                //           Text(
                                //             "Apps",
                                //             style: isDashbord == true &&
                                //                     numberRow == 1
                                //                 ? textStyleOne
                                //                 : textStyleOff,
                                //           ),
                                //         ],
                                //       ),
                                //       Icon(
                                //         isDashbord == true && numberRow == 1
                                //             ? Icons.arrow_drop_down_rounded
                                //             : Icons.arrow_right,
                                //         color:
                                //             isDashbord == true && numberRow == 1
                                //                 ? colorOne
                                //                 : colorOff,
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // Visibility(
                                //     visible: isDashbord && numberRow == 1,
                                //     child: Column(
                                //       children: [
                                //         for (int i = 0; i < 6; i++)
                                //           Padding(
                                //             padding: const EdgeInsets.only(
                                //               top: 20,
                                //               left: 5,
                                //             ),
                                //             child: InkWell(
                                //               onTap: () {
                                //                 setState(() {
                                //                   isSecondMenu = !isSecondMenu;
                                //                   numberI = i;
                                //                   if (isSecondMenu == false) {
                                //                     numberI = -1;
                                //                   }
                                //                 });
                                //               },
                                //               child: Column(
                                //                 children: [
                                //                   Row(
                                //                     mainAxisAlignment:
                                //                         MainAxisAlignment
                                //                             .spaceBetween,
                                //                     children: [
                                //                       Row(
                                //                         children: [
                                //                           Icon(
                                //                             Icons.linear_scale,
                                //                             color: isDashbord ==
                                //                                         true &&
                                //                                     numberI == i
                                //                                 ? colorOne
                                //                                 : colorOff,
                                //                             size: 10,
                                //                           ),
                                //                           const SizedBox(
                                //                             width: 20,
                                //                           ),
                                //                           Text(
                                //                             "onemenue",
                                //                             style: isSecondMenu ==
                                //                                         true &&
                                //                                     numberI == i
                                //                                 ? textStyleOne
                                //                                 : textStyleOff,
                                //                           ),
                                //                         ],
                                //                       ),
                                //                     ],
                                //                   ),
                                //                   Visibility(
                                //                       visible: isSecondMenu &&
                                //                           numberI == i,
                                //                       child: Column(
                                //                         children: [
                                //                           for (int j = 0;
                                //                               j < 4;
                                //                               j++)
                                //                             Padding(
                                //                               padding:
                                //                                   const EdgeInsets
                                //                                       .only(
                                //                                 top: 20,
                                //                                 left: 5,
                                //                               ),
                                //                               child:
                                //                                   InkWell(
                                //                                 onTap: () {
                                //                                   isSecondMenu =
                                //                                       !isSecondMenu;
                                //                                   numberJ = j;
                                //                                   if (isSecondMenu ==
                                //                                       false) {
                                //                                     numberJ ==
                                //                                         -1;
                                //                                   }
                                //                                 },
                                //                                 child: Row(
                                //                                   mainAxisAlignment:
                                //                                       MainAxisAlignment
                                //                                           .start,
                                //                                   children: [
                                //                                     Icon(
                                //                                       Icons
                                //                                           .circle_outlined,
                                //                                       color: isSecondMenu == true &&
                                //                                               numberJ == j
                                //                                           ? colorOne
                                //                                           : colorOff,
                                //                                       size: 5,
                                //                                     ),
                                //                                     const SizedBox(
                                //                                       width: 20,
                                //                                     ),
                                //                                     Text(
                                //                                       "isSecondMenu",
                                //                                       style:
                                //                                           textStyleOff,
                                //                                     ),
                                //                                   ],
                                //                                 ),
                                //                               ),
                                //                             ),
                                //                         ],
                                //                       ))
                                //                 ],
                                //               ),
                                //             ),
                                //           ),
                                //       ],
                                //     )),
                                // const SizedBox(
                                //   height: 15,
                                // ),
                                // const SizedBox(
                                //   height: 15,
                                // ),
                                // InkWell(
                                //   onTap: () {
                                //     setState(() {
                                //       isDashbord = !isDashbord;
                                //       if (isDashbord == false) {
                                //         isSecondMenu == false;
                                //         numberI = -1;
                                //         numberJ = -1;
                                //       }
                                //       numberRow = 2;
                                //     });
                                //   },
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Row(
                                //         children: [
                                //           Icon(
                                //             Icons.layers,
                                //             color: isDashbord == true &&
                                //                     numberRow == 2
                                //                 ? colorOne
                                //                 : colorOff,
                                //           ),
                                //           const SizedBox(
                                //             width: 20,
                                //           ),
                                //           Text(
                                //             "dashbord",
                                //             style: isDashbord == true &&
                                //                     numberRow == 2
                                //                 ? textStyleOne
                                //                 : textStyleOff,
                                //           ),
                                //         ],
                                //       ),
                                //       Icon(
                                //         isDashbord == true && numberRow == 2
                                //             ? Icons.arrow_drop_down_rounded
                                //             : Icons.arrow_right,
                                //         color:
                                //             isDashbord == true && numberRow == 2
                                //                 ? colorOne
                                //                 : colorOff,
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // Visibility(
                                //     visible: isDashbord && numberRow == 2,
                                //     child: Column(
                                //       children: [
                                //         for (int i = 0; i < 6; i++)
                                //           Padding(
                                //             padding: const EdgeInsets.only(
                                //               top: 20,
                                //               left: 5,
                                //             ),
                                //             child: InkWell(
                                //               onTap: () {
                                //                 setState(() {
                                //                   isSecondMenu = !isSecondMenu;
                                //                   numberI = i;
                                //                   if (isSecondMenu == false) {
                                //                     numberI = -1;
                                //                   }
                                //                 });
                                //               },
                                //               child: Column(
                                //                 children: [
                                //                   Row(
                                //                     mainAxisAlignment:
                                //                         MainAxisAlignment
                                //                             .spaceBetween,
                                //                     children: [
                                //                       Row(
                                //                         children: [
                                //                           Icon(
                                //                             Icons.linear_scale,
                                //                             color: isDashbord ==
                                //                                         true &&
                                //                                     numberI == i
                                //                                 ? colorOne
                                //                                 : colorOff,
                                //                             size: 10,
                                //                           ),
                                //                           const SizedBox(
                                //                             width: 20,
                                //                           ),
                                //                           Text(
                                //                             "onemenue",
                                //                             style: isSecondMenu ==
                                //                                         true &&
                                //                                     numberI == i
                                //                                 ? textStyleOne
                                //                                 : textStyleOff,
                                //                           ),
                                //                         ],
                                //                       ),
                                //                     ],
                                //                   ),
                                //                   Visibility(
                                //                       visible: isSecondMenu &&
                                //                           numberI == i,
                                //                       child: Column(
                                //                         children: [
                                //                           // for (int j = 0;
                                //                           //     j < 4;
                                //                           //     j++)
                                //                             Padding(
                                //                               padding:
                                //                                   const EdgeInsets
                                //                                       .only(
                                //                                 top: 20,
                                //                                 left: 5,
                                //                               ),
                                //                               child:
                                //                                   InkWell(
                                //                                 onTap: () {
                                //                                   isSecondMenu =
                                //                                       !isSecondMenu;
                                //                                   numberJ = 0;
                                //                                   if (isSecondMenu ==
                                //                                       false) {
                                //                                     numberJ ==
                                //                                         -1;
                                //                                   }
                                //                                 },
                                //                                 child: Row(
                                //                                   mainAxisAlignment:
                                //                                       MainAxisAlignment
                                //                                           .start,
                                //                                   children: [
                                //                                     Icon(
                                //                                       Icons
                                //                                           .circle_outlined,
                                //                                       color: isSecondMenu == true &&
                                //                                               numberJ == 0
                                //                                           ? colorOne
                                //                                           : colorOff,
                                //                                       size: 5,
                                //                                     ),
                                //                                     const SizedBox(
                                //                                       width: 20,
                                //                                     ),
                                //                                     Text(
                                //                                       "isSecondMenu",
                                //                                       style:
                                //                                           textStyleOff,
                                //                                     ),
                                //                                   ],
                                //                                 ),
                                //                               ),
                                //                             ),
                                //                         ],
                                //                       ))
                                //                 ],
                                //               ),
                                //             ),
                                //           ),
                                //       ],
                                //     )),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                for (int i = 0; i < icon.length; i++)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Icon(
                                      icon[i],
                                      color: colorOff,
                                    ),
                                  )
                              ],
                            )),
                ),
              ),
            ),
          ),
          Expanded(
              flex: showDashbord == true && screenWidth > 1200 ||
                      sizeShow == false && size == screenWidth ||
                      sizeShow == true &&
                          showDashbord == true &&
                          size == screenWidth ||
                      sizeShow == true &&
                          showDashbord == false &&
                          screenWidth > 1200 &&
                          size != screenWidth &&
                          size != 0 ||
                      size == screenWidth &&
                          screenWidth < 700 &&
                          showDashbord == true
                  ? 13
                  : 70,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 50,
                            child: IconButton(
                                onPressed: () {
                                  double bettwensize;
                                  setState(() {
                                    if (screenWidth < 1200 &&
                                        screenWidth > 700) {
                                      setState(() {
                                        sizeShow = !sizeShow;
                                        showDashbord = !showDashbord;
                                        bettwensize = size;
                                        size = screenWidth;

                                        if (size == bettwensize) {
                                          setState(() {
                                            size = 0;
                                          });
                                        }
                                      });
                                    } else if (screenWidth > 1200) {
                                      setState(() {
                                        sizeShow = !sizeShow;
                                        showDashbord = !showDashbord;
                                        bettwensize = size;
                                        size = screenWidth;
                                        if (size == bettwensize) {
                                          setState(() {
                                            size = 0;
                                          });
                                        }
                                      });
                                    } else if (screenWidth < 700) {
                                      setState(() {
                                        showDashbord = !showDashbord;
                                        size = screenWidth;
                                      });
                                    }
                                  });
                                  print(sizeShow);
                                  print(showDashbord);
                                  print(size);
                                  print(screenWidth);
                                },
                                icon: Icon(showDashbord == true &&
                                            screenWidth > 1200 &&
                                            size != screenWidth &&
                                            sizeShow != showDashbord ||
                                        sizeShow == false &&
                                            size == screenWidth &&
                                            screenWidth > 1200 &&
                                            sizeShow != showDashbord ||
                                        size != screenWidth &&
                                            screenWidth > 1200 &&
                                            showDashbord == true ||
                                        size == screenWidth &&
                                            screenWidth < 1200 &&
                                            screenWidth > 700 &&
                                            sizeShow == showDashbord ||
                                        sizeShow != showDashbord &&
                                            screenWidth > 1200 &&
                                            size != screenWidth &&
                                            size != 0 ||
                                        size == screenWidth &&
                                            screenWidth < 700 &&
                                            showDashbord == true ||
                                        sizeShow != showDashbord &&
                                            size == screenWidth &&
                                            size != 0 &&
                                            screenWidth < 1200 &&
                                            screenWidth > 700
                                    ? Icons.menu
                                    : Icons.arrow_forward)),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: 50,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class DataDashboard extends StatefulWidget {
  const DataDashboard({Key? key}) : super(key: key);

  @override
  State<DataDashboard> createState() => _DataDashboardState();
}

bool showDashbord = true;
bool isDashbord = false;
bool isSecondMenu = false;
bool sizeShow = true;
bool littelScreen = false;
bool beetwin = false;

int numberI = -1;
int numberJ = -1;
int numberRow = 0;
Color colorOne = Colors.white;
Color colorOff = const Color(0xffabb9e8);
int flx = 70;
double size = 0;
List<IconData> icon = [Icons.shutter_speed, Icons.apple_sharp, Icons.layers];

class _DataDashboardState extends State<DataDashboard> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyleOne = const TextStyle(
        fontWeight: FontWeight.w500, color: Colors.white, fontSize: 15);
    TextStyle textStyleOff = TextStyle(
      fontWeight: FontWeight.w500,
      color: colorOff,
      fontSize: 15,
    );
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                int over=0;
                setState(() {
                  isDashbord = !isDashbord;
                  if (isDashbord == false) {
                    isSecondMenu == false;
                    numberI = -1;
                    numberJ = -1;
                  }
                 over= numberRow;
                  numberRow = index;
                  ///baz kardan dashbord jadid ba yk klik
                  if (numberRow!=over) {
                    isDashbord = !isDashbord;
                  }
                  // if (numberRow==over) {
                  //   isDashbord = !isDashbord;
                  // }
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.shutter_speed,
                        color: isDashbord == true && numberRow == index
                            ? colorOne
                            : colorOff,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Dashbord",
                        style: isDashbord == true && numberRow == index
                            ? textStyleOne
                            : textStyleOff,
                      ),
                    ],
                  ),
                  Icon(
                    isDashbord == true && numberRow == index
                        ? Icons.arrow_drop_down_rounded
                        : Icons.arrow_right,
                    color: isDashbord == true && numberRow == index
                        ? colorOne
                        : colorOff,
                  )
                ],
              ),
            ),
            Visibility(
                visible: isDashbord && numberRow == index,
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
                                            isDashbord == true && numberI == i
                                                ? colorOne
                                                : colorOff,
                                        size: 10,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "onemenue",
                                        style: isSecondMenu == true &&
                                                numberI == i
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
                                                  color:
                                                      isSecondMenu == true &&
                                                              numberJ == j
                                                          ? colorOne
                                                          : colorOff,
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
