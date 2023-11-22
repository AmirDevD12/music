import 'package:flutter/material.dart';
import 'package:untitled/core/style/color_style.dart';

class ContainerTask extends StatelessWidget {
    final  String updateDate;
    final String path;
    final String issue;
    final  String information;
    final  double width;
    final double width2;
  const ContainerTask({Key? key, required this.updateDate, required this.path, required this.issue, required this.information, required this.width, required this.width2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Padding(
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
                   Expanded(
                      child: Text(
                        "${width}",
                        maxLines: 1,
                      )),
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "namenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamenamename",
                          maxLines: 1,
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
              const Divider(
                height: 1,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
