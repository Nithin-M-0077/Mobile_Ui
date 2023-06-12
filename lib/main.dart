import 'package:almudabir/View/DashboardUi/DashboardUi.dart';
import 'package:almudabir/View/ItemViewUi/ItemViewUi.dart';
import 'package:almudabir/View/LetsGetStartedLoginUi/LetsGetStartedLoginUi.dart';
import 'package:almudabir/View/MainLoginUi/mainLoginUi.dart';
import 'package:almudabir/View/MyAccountUi/myAccountUi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LetsGetStartedLoginUi(),
    );
  }
}
