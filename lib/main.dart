import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/block/appbar_screen/appbar_bloc.dart';
import 'package:untitled/block/dashboard_bloc.dart';
import 'package:untitled/screen/home_dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MultiBlocProvider(

        providers: [
          BlocProvider(create: (context)=>DashboardBloc()),
          BlocProvider(create: (context)=>AppbarBloc())
        ],
        child: const MyHomePage(),
      ),
    );
  }
}






