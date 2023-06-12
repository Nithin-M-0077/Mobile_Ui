import 'package:almudabir/PFontFamily.dart';
import 'package:flutter/material.dart';

Widget customContainerForRow1({
  required String text,
  required String image,
  required double containerWidth,
  required double containerHeight,
  required EdgeInsetsGeometry? margin,
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
  required double padding,
  required double imageHeight,
}) {
  return Container(
    margin: margin ?? const EdgeInsets.only(left: 18),
    color: color,
    width: containerWidth,
    height: containerHeight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: imageHeight,
          child: Image.asset(image),
        ),
      ],
    ),
  );
}

Widget rowSection1() {
  return Row(
    children: [
      customContainerForRow1(
          text: 'Vegetables & Fruits',
          image: 'asset/images/fruits.png',
          containerWidth: 205,
          containerHeight: 130,
          margin: const EdgeInsets.only(left: 18),
          color: const Color(0xFFF2F9FF),
          fontSize: 13,
          fontWeight: FontWeight.w600,
          padding: 8.0,
          imageHeight: 88),
      const SizedBox(
        width: 12,
      ),
      customContainerForRow1(
          text: 'Muchies',
          image: 'asset/images/fruits.png',
          containerWidth: 120,
          containerHeight: 130,
          margin: const EdgeInsets.only(left: 25),
          color: const Color(0xFFF2F9FF),
          fontSize: 13,
          fontWeight: FontWeight.w600,
          padding: 9.0,
          imageHeight: 80),
    ],
  );
}

Widget rowSection2and3(
    {required String item1,
    required String itemImage1,
    required String item2,
    required String itemImage2,
    required String item3,
    required String itemImage3}) {
  return Row(
    children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          color: Color(0xFFF2F9FF),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item1,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(height: 100, child: Image.asset(itemImage1)),
            ],
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Container(
          color: const Color(0xFFF2F9FF),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item2,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(height: 100, child: Image.asset(itemImage2)),
            ],
          ),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 10),
          color: Color(0xFFF2F9FF),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item3,
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: PFontFamily.sf_ui_display,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(height: 90, child: Image.asset(itemImage3)),
            ],
          ),
        ),
      ),
    ],
  );
}
