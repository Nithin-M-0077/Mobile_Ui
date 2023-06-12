import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:flutter/material.dart';
String descText= 'The carrot is a biennial plant in the umbellifer family, Apiaceae. At first, it grows a rosette of leaves while building up the enlarged taproot. Fast-growing cultivars mature within three months (90 days) of sowing the seed, while slower-maturing cultivars need a month longer (120 days)';

Widget descriptionText() {
  return Padding(
    padding: const EdgeInsets.only(left: 40, right: 40),
    child: Container(
      height: 100,
      color: PSettings.color1,
      child: Text(
        descText,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
    ),
  );
}

Widget dropDownWithText() {
  return Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Row(
      children: [
        Text(
          'Read more details',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: PSettings.color14,
          ),
        ),
        Icon(
          Icons.arrow_drop_down,
          color: PSettings.color14,
        ),
      ],
    ),
  );
}
