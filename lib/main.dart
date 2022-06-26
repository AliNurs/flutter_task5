import 'package:flutter/material.dart';
import 'package:flutter_task5/theme/app_images.dart';
import 'package:flutter_task5/screens/widgets/categories.dart';

import 'screens/home_screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screen task 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
