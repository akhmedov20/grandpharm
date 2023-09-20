import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/korzina/choose%20pharmacy/karta_screen.dart';
import 'package:grandpharm/src/ui/login/login_screen.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grand Pharm',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: KartaScreen(),
    );
  }
}


