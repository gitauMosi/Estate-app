import 'package:estate_app/constants/color.dart';
import 'package:estate_app/views/main_page.dart';
import 'package:estate_app/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Estate App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: "/splash",
      getPages: [
        GetPage(name: "/splash", page: () => const SplashScreen()),
        GetPage(name: "/mainPage", page: () => const MainPage()),
      ],
    );
  }
}
