import 'package:flutter/material.dart';
import 'package:flutterfetchtaxiapp/utils/theme.dart';
import 'ui/screens/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Taxi App',
      // theme: ThemeData(
      //   primaryColor: Color(0xffdd6b3d),
      // ),
      theme: basicTheme(),
      home: HomeScreen(),
    );
  }
}
