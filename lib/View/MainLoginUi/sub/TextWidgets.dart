import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:flutter/material.dart';

Widget orText() {
  return Center(
      child: Text(
    'OR',
    style: TextStyle(
        color: Color(0xff757575),
        fontSize: 15,
        letterSpacing: 0.4,
        fontWeight: FontWeight.w500,
        fontFamily: PFontFamily.sf_ui_display),
  ));
}

Widget mainLoginText() {
  return Padding(
      padding: const EdgeInsets.only(top: 70, left: 27),
      child: Text(
        'Login',
        style: (TextStyle(
            color: PSettings.color16,
            fontSize: 40,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600,
            fontFamily: PFontFamily.sf_ui_display)),
      ));
}

Widget signUpGreenText() {
  return Container(
    child: Center(
      child: RichText(
        text: TextSpan(
          text: 'Doesn’t Have an Account ?',
          style: TextStyle(
              letterSpacing: 0.3,
              color: PSettings.color8,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              fontFamily: PFontFamily.sf_ui_display),
          children: <TextSpan>[
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: PSettings.color17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
