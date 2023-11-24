import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/block/appbar_screen/appbar_bloc.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  final ValueChanged<String>? value;
  const PopupMenuButtonWidget({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      PopupMenuButton(color: Colors.white,
        icon: const Icon(Icons.arrow_drop_down),
        position: PopupMenuPosition.under,
        onSelected:value,
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
