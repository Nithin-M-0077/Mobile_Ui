import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:flutter/material.dart';

Widget headingText(){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 70, left: 25),
        child: Text(
          'Lets get Started!',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xff296059)),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 8, left: 25),
        child: Text(
          'Create an account to almudabir to get all features.',
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xff717070)),
        ),
      ),
    ],
  );
}


Widget termsandConditionText() {
  return Container(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: RichText(
      text: TextSpan(
        text:' By clicking the continue button you are accepting the ',
        style: TextStyle(
            color: PSettings.color8,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: PFontFamily.sf_ui_display),
        children: <TextSpan>[
          TextSpan(
            text: 'terms and conditions ',
            style: TextStyle(
              color: PSettings.color17,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: 'of Almudabir.',
          ),
        ],
      ),
    ),
  );
}