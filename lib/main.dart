import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:list_2_us/connectivity/connectivity_bloc.dart';
import 'package:list_2_us/views/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BlocProvider<NetworkBloc>(
          create: (BuildContext context) => NetworkBloc()..add(ListenConnection()),
          child: SplashScreen(),
        ),
      )
    );
  }
}