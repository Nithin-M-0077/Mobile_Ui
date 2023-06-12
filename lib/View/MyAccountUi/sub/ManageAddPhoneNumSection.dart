import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:flutter/material.dart';

class ManagePhoneButtons extends StatefulWidget {
  @override
  _ManagePhoneButtonsState createState() => _ManagePhoneButtonsState();
}

class _ManagePhoneButtonsState extends State<ManagePhoneButtons> {
  Widget CustomButton({
    required String imagePath,
    required String buttonText,
  }) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: PSettings.color14,
          width: 1.5,
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(imagePath)),
            SizedBox(width: 8.0),
            Text(
              buttonText,
              style: TextStyle(
                color: PSettings.color17,
                fontSize: 12,
                fontFamily: PFontFamily.sf_ui_display,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                imagePath: 'asset/images/message.png',
                buttonText: 'Manage Address'),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: CustomButton(
                imagePath: 'asset/images/phone.png',
                buttonText: 'Phone Number'),
          ),
        ],
      ),
    );
  }
}
