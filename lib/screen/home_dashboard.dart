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
import 'package:untitled/core/widget/search_box_body.dart';
import 'package:untitled/core/widget/textfield_widget.dart';
import 'package:untitled/core/widget/time_limit.dart';
import 'package:untitled/screen/appbar_page.dart';

import 'data_dashboard.dart';
import 'menu_little_dashboard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool sizeShow = true;
  bool showDashboard = true;
  bool isDashboard = false;
  bool isAppbar = false;
  bool secondPop =false;
  bool isMouseRegin = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<DashboardBloc>(context)
        .add(ChangeDashboardWithIconButtonEvent());
  }

  @override
  Widget build(BuildContext context) {
    List<Color> colorsList = ColorsStyle.getAllColors();


  List<IconData> icon = [
      Icons.shutter_speed,
      Icons.apple_sharp,
      Icons.layers
    ];
    int numberRow = 0;
    int stack = -1;
    double topPosition = 30;
    double size = 0;
    double height = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
                                          child: const DataDashboard(isIcon: true,),
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
                                                        onHover: (PointerHoverEvent event) {
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
                              flex: 1,
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween
                                      ,
                                      children: [
                                        isAppbar == false && screenWidth > 850
                                            ? Container(
                                                width: 350,
                                                decoration: const BoxDecoration(
                                                    color: ColorsStyle.secondaryColorProfile,
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(5))),
                                                child: TextFieldWidget(
                                                    value:(value) {},
                                                    text:"search...",
                                                    borderSide: BorderSide.none,
                                                    icon: const Icon(Icons.search,color: ColorsStyle.secondaryColor,size: 17,)),
                                              )
                                            : Expanded(
                                                child: Container(
                                                decoration: const BoxDecoration(
                                                    color: ColorsStyle.screen,
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(10))),
                                                child: TextFieldWidget(
                                                    value:(value) {},
                                                    text:"search...",
                                                    borderSide: BorderSide.none,
                                                    icon: const Icon(Icons.search,color: ColorsStyle.secondaryColor,size: 17,)),
                                              ))
                                      ],
                                    ),
                                  )
                                : const Center(),
                            screenWidth<720?const Spacer():const SizedBox(),
                            BlocBuilder<DashboardBloc, DashboardState>(
                              builder: (context, state) {

                                return screenWidth>770?Expanded(
                                    flex: isAppbar &&
                                            screenWidth > 720 && screenWidth < 796
                                        ? 2
                                        : 1,
                                    child: AppbarPage(withScreen: screenWidth,)):
                                AppbarPage(withScreen: screenWidth,width: 400,);
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
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
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
                                      : const Center()
                                ],
                              ),
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
                           Expanded(
                             child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const ContainerWidget(width: 110, height: 38, radius: 5,colorBack: ColorsStyle.success,
                                    widget:IconText(iconWidget: Icons.add,text: "Add New"),),
                                  const Spacer(),
                                  screenWidth>630?
                                  Row(
                                    children: [
                                      Container(
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
                                      ),
                                      const SizedBox(width: 10,),
                                      const TimeLimit()
                                    ],
                                  ):const SizedBox(),

                                ],
                              ),
                                                       ),
                           ),
                          screenWidth<=630?
                           Expanded(
                            child: Row(
                              children: [
                                const SizedBox(width: 15,),
                                screenWidth>510?const SearchBox():
                                const Expanded(child: SearchBox()),
                                const SizedBox(width: 10,),
                                const TimeLimit(),
                                const SizedBox(width: 45,)
                              ],
                            ),
                          ):const SizedBox(),
                      const SizedBox(height: 10,),
                      Expanded(
                        flex: 10,
                        child: Wrap(
                          children: <Widget>[

                            for (int i = 1; i < 9; i++)
                              ContainerTask(
                                updateDate: '"Updated 3hrs ago"',
                                path: 'assets/images/dropbox$i.png',
                                issue: 'Last update : 08 May',
                                information:
                                    'Create a Brand logo design for a   admin.',
                                 backImage: colorsList[i],
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
            builder: (context, state) {  print(state);
              return Positioned(
                  top: topPosition,
                  left: 50,
                  child: isMouseRegin == true
                      ? MouseRegion(
                          onHover: (PointerHoverEvent event) {

                              isMouseRegin = true;
                          },
                          onExit: (PointerExitEvent event) {
                                      isMouseRegin = false;
                            BlocProvider.of<DashboardBloc>(context)
                                .add(ShowPopForDashboardEvent());
                          },
                          child: Container(
                            width: 250,
                            height: 140,
                            color: ColorsStyle.backgroundDashboard,
                            child:const MenuLittleDashboard()
                          ),
                        )
                      : Container());

            },
          ),
          BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              TextStyle textStyleOne = const TextStyle(
                  fontWeight: FontWeight.w500, color: ColorsStyle.colorOne, fontSize: 15);
              TextStyle textStyleOff = const TextStyle(
                fontWeight: FontWeight.w500,
                color: ColorsStyle.colorOff,
                fontSize: 15,
              );
              double top=0;
              if (state is ShowSecondPopState) {

                top=(topPosition+(state.top*45));
              }


              return  state is ShowSecondPopState&&state.show&&state.top>0?Positioned(
                  top: top,
                  left: 300,
                  child: MouseRegion(
                    onHover: (PointerHoverEvent event) {

                        isMouseRegin = true;
                        BlocProvider.of<DashboardBloc>(context)
                            .add(ShowSecondPopEvent(isMouseRegin, state.top));
                    },
                    onExit: (PointerExitEvent event) {
                      BlocProvider.of<DashboardBloc>(context)
                          .add(ShowPopForDashboardEvent());
                    },
                    child:
                    Container(

                        color: ColorsStyle.backgroundDashboard,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              MouseRegion(
                                onHover: (event){
                                  secondPop=true;
                                },
                                onExit: (exit){
                                  secondPop =false;
                                },
                                child: Row(
                                  children: [
                                    Text("Chat Application",style: secondPop?textStyleOne:textStyleOff,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  )
              ):SizedBox();
            },
          ),

          ///hide textField
          BlocBuilder<AppbarBloc, AppbarState>(
            builder: (context, state) {
              return Positioned(
                  left: screenWidth < 650 && screenWidth > 600 ? 250 : 0,
                  top: 70,
                  child: screenWidth < 720 && state is ShowSearchAppbarState&&state.isTextField==true
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
                                child: TextFieldWidget(
                                value:   (value) {},
                                 text:  "search...",
                                  borderSide:  const BorderSide(color: ColorsStyle.gray),
                                  icon: Container(
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


}
