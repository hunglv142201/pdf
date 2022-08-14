import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PDF Creator",
      home: HomeScreen(),
    );
  }
}
