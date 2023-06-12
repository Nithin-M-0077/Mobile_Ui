import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/LetsGetStartedLoginUi/sub/mainUi.dart';
import 'package:flutter/material.dart';

class LetsGetStartedLoginUi extends StatefulWidget {
  const LetsGetStartedLoginUi({Key? key}) : super(key: key);

  @override
  State<LetsGetStartedLoginUi> createState() => _LetsGetStartedLoginUiState();
}

class _LetsGetStartedLoginUiState extends State<LetsGetStartedLoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PSettings.color2,
        body:  mainUi()
    );
  }
}
