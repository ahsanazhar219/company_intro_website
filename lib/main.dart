import 'package:company_intro_website/pages/home/home.dart';
import 'package:company_intro_website/pages/services/services.dart';
import 'package:company_intro_website/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABS Creative Hub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/home' : (context) => const HomePage(),
        '/services' : (context) => const ServicesPage(),
      },
      home: const HomePage(),
    );
  }
}

