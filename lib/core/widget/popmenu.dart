import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/block/appbar_screen/appbar_bloc.dart';
import 'package:untitled/core/style/color_style.dart';
class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      PopupMenuButton(color: Colors.white,
        icon: Icon(Icons.arrow_drop_down),
        position: PopupMenuPosition.under,
        onSelected: (value) {
          BlocProvider.of<AppbarBloc>(context).add(TimeLimitEvent(timeLimit: value));
        },
        itemBuilder: (BuildContext bc) {
          return const [
            PopupMenuItem(
              value: 'hello',
              child: Text("Hello"),
            ),
            PopupMenuItem(
              value: 'about',
              child: Text("About"),
            ),
            PopupMenuItem(
              value: 'contact',
              child: Text("Contact"),
            )
          ];
        },
      );
  }
}
