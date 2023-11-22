import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/block/appbar_screen/appbar_bloc.dart';
import 'package:untitled/block/dashboard_bloc.dart';
import 'package:untitled/core/style/color_style.dart';
import 'package:untitled/core/widget/container_widget.dart';
import 'package:untitled/core/widget/containertask.dart';
import 'package:untitled/core/widget/icone_text.dart';
import 'package:untitled/core/widget/information_screen.dart';
import 'package:untitled/core/widget/time_limit.dart';

import 'data_dashboard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool sizeShow = true;
  bool isTextField = false;
  bool showDashboard = true;
  bool isDashboard = false;
  bool isAppbar = false;
  int numberRow = 0;
  bool isMouseRegin = false;
  int stack = -1;
  double topPosition = 30;
  double size = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<DashboardBloc>(context)
        .add(ChangeDashboardWithIconButtonEvent());
  }

  @override
  Widget build(BuildContext context) {
    List<IconData> icon = [
      Icons.shutter_speed,
      Icons.apple_sharp,
      Icons.layers
    ];

    double height = MediaQuery.of(context).size.height;
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
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Row(
            children: [
              BlocBuilder<DashboardBloc, DashboardState>(
                buildWhen: (previous, current) {
                  if (previous is ChangeDashboardWithIconButtonState ||
                      current is ShowPopForDashboardState ||
                      current is ChangeDashboardWithIconButtonState) {
                    return true;
                  } else {
                    return false;
                  }
                },
                builder: (context, state) {
                  return Visibility(
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
                          : 60,
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
                                      size != screenWidth &&
                                          screenWidth > 1000 ||
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
                                                    color:
                                                        ColorsStyle.colorOne),
                                              ),
                                              const Text(
                                                "MENU",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: ColorsStyle.colorOff,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                  : Column(
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
                                              return Row(mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 22),
                                                    child: MouseRegion(
                                                        onHover: (PointerHoverEvent
                                                            event) {
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
                                                          BlocProvider.of<
                                                                      DashboardBloc>(
                                                                  context)
                                                              .add(
                                                                  ShowPopForDashboardEvent());
                                                        },
                                                        onExit: (PointerExitEvent
                                                            event) {
                                                          isMouseRegin = false;
                                                          topPosition =
                                                              30 * (stack + 1);
                                                          if (index > 0) {
                                                            topPosition += 20;
                                                          }
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
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    )),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Expanded(
                    child: Container(
                      color: ColorsStyle.screen,
                      child: Column(
                        children: [
                      Container(
                        color: ColorsStyle.colorOne,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 70,
                              child: BlocBuilder<DashboardBloc, DashboardState>(
                                builder: (context, state) {
                                  return IconButton(
                                      onPressed: () {
                                        double betweenSize;
                                        if (screenWidth < 1000 &&
                                            screenWidth > 700) {
                                          sizeShow = !sizeShow;
                                          showDashboard = !showDashboard;
                                          betweenSize = size;
                                          size = screenWidth;
                                          if (size == betweenSize) {
                                            size = 0;
                                          }
                                        } else if (screenWidth > 1000) {
                                          sizeShow = !sizeShow;
                                          showDashboard = !showDashboard;
                                          betweenSize = size;
                                          size = screenWidth;
                                          if (size == betweenSize) {
                                            size = 0;
                                          }
                                        } else if (screenWidth < 700) {
                                          showDashboard = !showDashboard;
                                          size = screenWidth;
                                        }
                                        isAppbar = !isAppbar;
                                        BlocProvider.of<DashboardBloc>(context).add(
                                            ChangeDashboardWithIconButtonEvent());
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
                                          : Icons.menu));
                                },
                              ),
                            ),
                            screenWidth > 720
                                ? Expanded(
                                    child: Row(
                                      children: [
                                        isAppbar == false && screenWidth > 850
                                            ? Container(
                                                width: 350,
                                                decoration: const BoxDecoration(
                                                    color: ColorsStyle.colorBox,
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(10))),
                                                child: textField(
                                                    (value) {},
                                                    "search...",
                                                    BorderSide.none,
                                                    const Icon(Icons.search,color: ColorsStyle.secondaryColor,size: 17,)),
                                              )
                                            : Expanded(
                                                child: Container(
                                                decoration: const BoxDecoration(
                                                    color: ColorsStyle.screen,
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(10))),
                                                child: textField(
                                                    (value) {},
                                                    "search...",
                                                    BorderSide.none,
                                                    const Icon(Icons.search,color: ColorsStyle.secondaryColor,size: 17,)),
                                              ))
                                      ],
                                    ),
                                  )
                                : const Center(),
                            BlocBuilder<DashboardBloc, DashboardState>(
                              builder: (context, state) {
                                return Expanded(
                                    flex: isAppbar &&
                                            screenWidth > 720 &&
                                            screenWidth < 796
                                        ? 2
                                        : 1,
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
                                                            Radius.circular(12))),
                                                child: IconButton(
                                                    onPressed: () {
                                                      isTextField = !isTextField;
                                                      BlocProvider.of<AppbarBloc>(
                                                              context)
                                                          .add(
                                                              ShowSearchAppbarEvent());
                                                    },
                                                    icon:
                                                        const Icon(Icons.search,color: ColorsStyle.secondaryColor,size: 17,)),
                                              )
                                            : Container(),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: SizedBox(
                                              width: 30,
                                              child: Image.asset(
                                                  "assets/images/avatar-4.png")),
                                        ),
                                        const SizedBox(width: 5,),
                                        iconButton(Icons.add_business_rounded),
                                        const SizedBox(width: 5,),
                                        iconButton(Icons.shopping_basket_rounded),
                                        const SizedBox(width: 5,),
                                        iconButton(Icons.filter_center_focus),
                                        const SizedBox(width: 5,),
                                        iconButton(Icons.calendar_month_sharp),
                                        const SizedBox(width: 5,),
                                        iconButton(Icons.add_alert_sharp),
                                        InkWell(
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Container(
                                              height: 70,
                                              decoration: BoxDecoration(
                                                  color: screenWidth > 700
                                                      ? ColorsStyle.secondaryColorProfile
                                                      : ColorsStyle.colorOne,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: ContainerWidget(width: 35, height: 35, radius: 100,colorBack: Colors.red, widget:
                                                    ClipOval(child: Image.asset("assets/images/avatar-3.jpg",fit: BoxFit.cover,))),
                                                  ),

                                                  screenWidth > 1300
                                                      ?  const SizedBox(
                                                        width: 120,
                                                        child: ListTile(
                                                          title: Text("Amir king"),
                                                          subtitle: Text("Rahmani"),
                                                        ),
                                                      )
                                                      : const Center()

                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ));
                              },
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
                                    ? const informationScreen()
                                    : Container()
                              ],
                            ),
                            const Spacer(),
                            Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: screenWidth > 600
                                    ? const informationScreen()
                                    : Container())
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                           Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const ContainerWidget(width: 110, height: 38, radius: 5,colorBack: ColorsStyle.success,
                                  widget:IconText(iconWidget: Icons.add,text: "Add New"),),
                                const Spacer(),
                                Container(
                                  width: 350,
                                  decoration:  BoxDecoration(
                                      color: ColorsStyle.colorOne,
                                      border: Border.all(color: ColorsStyle.colorBox,width: 1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  child: textField(
                                          (value) {},
                                      "search...",
                                      BorderSide.none,
                                      const Icon(Icons.search,color: ColorsStyle.secondaryColor,size: 17,)),
                                ),
                                const SizedBox(width: 10,),
                                const TimeLimit()
                              ],
                            ),
                          ),

                      Expanded(
                        flex: 10,
                        child: Wrap(
                          children: <Widget>[
                            for (int i = 0; i < 8; i++)
                              ContainerTask(
                                updateDate: '"Updated 3hrs ago"',
                                path: 'assets/images/avatar-10.jpg',
                                issue: 'Slack brand logo design',
                                information:
                                    'Create a Brand logo design for a   admin.',
                                width: screenWidth,
                                width2: changWith,
                              ),
                          ],
                        ),
                      )
                                        ],
                                      ),
                    )),

            ],
          ),

          ///menu Dashboard
          BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return Positioned(
                  top: topPosition,
                  left: 50,
                  child: isMouseRegin == true
                      ? MouseRegion(
                          onHover: (PointerHoverEvent event) {
                            isMouseRegin = true;
                            BlocProvider.of<DashboardBloc>(context)
                                .add(ShowPopForDashboardEvent());
                          },
                          onExit: (PointerExitEvent event) {
                            isMouseRegin = false;
                            BlocProvider.of<DashboardBloc>(context)
                                .add(ShowPopForDashboardEvent());
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
                      : Container());
            },
          ),

          ///hide textField
          BlocBuilder<AppbarBloc, AppbarState>(
            builder: (context, state) {
              return Positioned(
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
                                width:
                                    screenWidth < 600 ? screenWidth - 100 : 300,
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
                      : Container());
            },
          )
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
          prefixIcon: icon,

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
