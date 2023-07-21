// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:peri_desktop/pages/adm_login/adm_login_page.dart';
import 'package:peri_desktop/pages/stats_page/stats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => AdmLoginPage(),
        '/statistics': (context) => const StatisticsPage(),
      },
      debugShowCheckedModeBanner:
          false, // Remove the debug banner in the top right corner
      title: '💻 Peri Desktop',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
