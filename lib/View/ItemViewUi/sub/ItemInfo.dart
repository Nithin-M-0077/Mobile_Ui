import 'package:almudabir/PSettings.dart';
import 'package:flutter/material.dart';

Widget lineThroughText(){
  return RichText(
    text: TextSpan(
      text: 'Rs ',
      style: TextStyle(
        fontSize: 12,
        color: PSettings.color8,
        fontWeight: FontWeight.w500,
      ),
      children: <TextSpan>[
        TextSpan(
          text: '110',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    ),
  );
}

Widget addButton(){
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: PSettings.color15,
    ),
    child: Text(
      "ADD",
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
  );
}

Widget discountOffButton(){
  return  TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      backgroundColor: PSettings.color17,
    ),
    child: Text(
      '20% off',
      style: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
Widget priceText(){
  return  Text(
    'Rs 100',
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget weightText(){
  return  Text(
    '1 Kg',
    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
  );
}



Widget productInfo(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: weightText(),
      ),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            priceText(),
            const SizedBox(width: 10),
            Container(
              height: 25,
              width: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: discountOffButton(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Container(
                height: 35,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: addButton(),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: lineThroughText(),
      ),
    ],
  );
}
