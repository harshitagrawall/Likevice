import 'package:flutter/material.dart';
import 'package:likevice/screens/home_screen.dart';
import 'package:likevice/screens/splash_screen.dart';

void main() {
  runApp(const LiveViceApplication());
}

class LiveViceApplication extends StatelessWidget {
  const LiveViceApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Likevice",
      home: HomeScreen(),
    );
  }
}