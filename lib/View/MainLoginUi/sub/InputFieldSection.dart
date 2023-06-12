import 'package:flutter/material.dart';

Widget inputText(String inputText){
  return Text(
    inputText,
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: const Color(0xff838383),
      //fontFamily: PFontFamily.sf_ui_display,
    ),
  );
}


Widget usernameInputField(){
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15),
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       inputText('Email ID/Username'),
        const SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF2F9FF),
            border: InputBorder.none, // Remove the border
          ),
        ),
      ],
    ),
  );
}

Widget passwordInputField() {
  bool obscureText = true;
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15),
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       inputText( 'Password',),
        const SizedBox(height: 10,),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF2F9FF),
            border: InputBorder.none,
            suffixIcon: IconButton(
              onPressed: () {
                obscureText = !obscureText;
              },
              icon: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              color: const Color(0xff000000),
              iconSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}


