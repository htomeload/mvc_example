import 'package:flutter/material.dart';
import 'package:mvc_example/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter MVC",
      home: HomePageView(),
    );
  }
}
