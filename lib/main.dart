import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
// custom appbar
