import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/block/appbar_screen/appbar_bloc.dart';
import 'package:untitled/core/style/color_style.dart';
import 'package:untitled/core/widget/popmenu.dart';

class TimeLimit extends StatelessWidget {

  const TimeLimit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 40,
      decoration: BoxDecoration(
          color: ColorsStyle.colorOne,
          border: Border.all(color: ColorsStyle.colorBox, width: 1),
          borderRadius: const BorderRadius.all(
              Radius.circular(5))),
      child: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BlocBuilder<AppbarBloc, AppbarState>(
            builder: (context, state) {
              if (state is TimeLimitState) {
                return Text(state.timeLimit);
              }else{
                return const Text("Saterday",);
              }

            },
          ),
          const SizedBox(
            width: 20,
          ),
           PopupMenuButtonWidget(value: (values){
             BlocProvider.of<AppbarBloc>(context).add(TimeLimitEvent(timeLimit: values));
           }),
        ],
      ),
    );
  }
}
