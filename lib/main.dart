import 'package:elagance/view/splash_screen/splash_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

debugShowCheckedModeBanner: false,
theme: ThemeData(
  primaryColorLight:HexColor('E5D3C2'),

    ),
        home: SplashScreen(),

    );
  }
}

