import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/block/appbar_screen/appbar_bloc.dart';
import 'package:untitled/block/dashboard_bloc.dart';
import 'package:untitled/core/style/color_style.dart';
import 'package:untitled/core/widget/container_widget.dart';
import 'package:untitled/core/widget/iconbutton.dart';
class AppbarPage extends StatelessWidget {
  final double withScreen;
  final double? width;
  AppbarPage({super.key, required this.withScreen,this.width});
  bool isTextField = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppbarBloc, AppbarState>(
  builder: (context, state) {
    return SizedBox(
      width: width??350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          withScreen < 720
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
                      ShowSearchAppbarEvent(isTextField: isTextField));
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
          const IconButtonWidget( icon: Icons.add_business_rounded, ),
          const SizedBox(width: 5,),
          const IconButtonWidget(icon:Icons.shopping_basket_rounded),
          const SizedBox(width: 5,),
          const IconButtonWidget(icon:Icons.filter_center_focus),
          const SizedBox(width: 5,),
          const IconButtonWidget(icon:Icons.calendar_month_sharp),
          const SizedBox(width: 5,),
          const IconButtonWidget(icon:Icons.add_alert_sharp),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: withScreen > 700
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

                    withScreen > 1300
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
      ),
    );
  },
);;
  }
}
