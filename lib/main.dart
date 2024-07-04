import 'package:flutter/material.dart';
import 'package:radiox/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'radioX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.dark(
        background: lightgrey,
        onBackground: darkgrey,
        primary: Colors.grey.shade300,
        onPrimary: Colors.grey.shade500,
      )),
      home: const HomePage(),
    );
  }
}

Color lightgrey = const Color(0xff212121);
Color darkgrey = const Color(0xff171717);
