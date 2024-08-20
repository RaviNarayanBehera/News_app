import 'dart:async';

import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 15),(){Navigator.of(context).pushReplacementNamed('/home');});
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 100,
          backgroundImage: AssetImage('assets/images/newsLogo.png'),
        ),
      ),
    );
  }
}
