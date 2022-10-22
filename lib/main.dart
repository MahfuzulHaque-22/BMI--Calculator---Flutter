import 'package:bmi_calculator/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'index.dart';
import 'all_designstyle.dart';
import 'cart_content.dart';
import 'cart_item.dart';
import 'resultpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        scaffoldBackgroundColor: kMyBackgroundColor,
        appBarTheme: AppBarTheme(
        color: kActiveColor,
    )),
      initialRoute: '/',
      routes: {
          '/':(context)=>HomePage(),

      },
    );
  }
}
