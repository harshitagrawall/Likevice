import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/likevice.png'),
          radius: 40.0,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColorDark,
    );
  }
}
