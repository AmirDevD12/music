import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/block/dashboard_bloc.dart';
import '../core/style/color_style.dart';

class MenuLittleDashboard extends StatefulWidget {
  const MenuLittleDashboard({Key? key,}) : super(key: key);

  @override
  State<MenuLittleDashboard> createState() => _DataDashboardState();
}
class _DataDashboardState extends State<MenuLittleDashboard> {
  bool isDashboard = false;
  bool isSecondMenu = false;
  bool isMouseRegin = false;
  int numberRow = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyleOne = const TextStyle(
        fontWeight: FontWeight.w500, color: ColorsStyle.colorOne, fontSize: 15);
    TextStyle textStyleOff = const TextStyle(
      fontWeight: FontWeight.w500,
      color: ColorsStyle.colorOff,
      fontSize: 15,
    );
    return BlocBuilder<DashboardBloc, DashboardState>(

  builder: (context, state) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(

              child: MouseRegion(
                onHover: (PointerHoverEvent event) {
                  int mouseRegion = -1;
                
                    mouseRegion = index;
                    if (mouseRegion == index && isDashboard == false) {
                      numberRow = index;
                      isMouseRegin = true;
                      if (index>=0) {
                        BlocProvider.of<DashboardBloc>(context)
                            .add(ShowSecondPopEvent(isMouseRegin,index));
                      }

                    }

                },
                onExit: (PointerExitEvent event) {
                    isMouseRegin = false;
                    if (index>0) {
                      BlocProvider.of<DashboardBloc>(context)
                          .add(ShowSecondPopEvent(isMouseRegin,index));
                    }

                },
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   index==0?const SizedBox(width: 0,):const SizedBox(width: 40,),
                   Text(
                     "Dashboard",
                     style: isDashboard == true && numberRow == index ||
                         isMouseRegin && numberRow == index||state is ShowSecondPopState&&index==state.top
                         ? textStyleOne
                         : textStyleOff,
                   ),
                   index==0?const SizedBox(width: 75,):const SizedBox(width: 40,),
                   Icon(Icons.arrow_right,
                     color: isDashboard == true && numberRow == index ||
                         isMouseRegin && numberRow == index||state is ShowSecondPopState&&index==state.top
                         ? ColorsStyle.colorOne
                         : ColorsStyle.colorOff,
                   ),
                   index==0?const SizedBox(height: 30,):const SizedBox()
                 ],
                                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        );
      },
    );
  },
);
  }
}

