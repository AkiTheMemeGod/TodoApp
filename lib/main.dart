// ignore_for_file: unused_local_variable

import 'package:counterapp/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

// comment on this
void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: const Color.fromARGB(255, 127, 92, 202),
      )),
    );
  }
}
