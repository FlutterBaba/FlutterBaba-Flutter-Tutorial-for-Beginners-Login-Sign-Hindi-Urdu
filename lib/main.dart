import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'consts.dart';
import 'pages/welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
        cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
            primaryColor: kTextColor,
            textTheme: CupertinoTextThemeData(
                primaryColor: kTextColor,
                textStyle: const TextStyle(
                  fontSize: 16,
                ))),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: kTextColor.withOpacity(0.7)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kTextColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kTextColor),
          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: const WelcomPage(),
    );
  }
}
