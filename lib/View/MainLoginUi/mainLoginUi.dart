import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/MainLoginUi/sub/mainLoginPage.dart';
import 'package:flutter/material.dart';

class MainLoginUi extends StatefulWidget {
  const MainLoginUi({Key? key}) : super(key: key);

  @override
  State<MainLoginUi> createState() => _MainLoginUiState();
}

class _MainLoginUiState extends State<MainLoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color2,
      body:const MainLoginPage(),
    );
  }
}
