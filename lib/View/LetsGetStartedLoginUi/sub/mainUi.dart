import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/LetsGetStartedLoginUi/sub/TextWidgets.dart';
import 'package:almudabir/View/MainLoginUi/mainLoginUi.dart';
import 'package:flutter/material.dart';

class mainUi extends StatefulWidget {
  const mainUi({Key? key}) : super(key: key);

  @override
  State<mainUi> createState() => _mainUiState();
}

class _mainUiState extends State<mainUi> {



  Widget logo() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      height: 100,
      child: const Image(
        image: AssetImage('asset/images/logoo.png'),
      ),
    );
  }



  Widget textInputField({required String label,}) {
    return Container(
      padding:const  EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xff838383),
              fontFamily: PFontFamily.sf_ui_display,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const  InputDecoration(
              filled: true,
              fillColor: const Color(0xffF2F9FF),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color:  const Color(0xff3D374C),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }

  Widget continueButton(){
    return  Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      height: 60,
      color: const  Color(0xff006000),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainLoginUi()),
          );
        },
        child: Center(
          child: Text(
            'CONTINUE',
            style: TextStyle(
              letterSpacing: 0.5,
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: PSettings.color2,
              fontFamily: PFontFamily.sf_ui_display,
            ),
          ),
        ),
      ),
    );
  }

  Widget main(){
    return  ListView(
      children: [
        headingText(),
        logo(),
        const SizedBox(height: 30,),
        textInputField(label: 'Username'),
        textInputField(label: 'Email'),
        const SizedBox(height: 10,),
        continueButton(),
        const SizedBox(height: 30,),
        termsandConditionText(),

      ],

    );
  }

  @override
  Widget build(BuildContext context) {
    return main();
  }
}
