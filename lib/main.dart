import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/View/detail_page.dart';
import 'package:news/View/home_page.dart';
import 'package:news/View/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/detail', page: () => const DetailPage()),
      ],
    );
  }
}
