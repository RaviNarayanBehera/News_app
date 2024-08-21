import 'dart:async';

import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 15),(){Navigator.of(context).pushReplacementNamed('/home');});
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/newsLogo.png'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'WORLD NEWS',
            style: TextStyle(
                color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
