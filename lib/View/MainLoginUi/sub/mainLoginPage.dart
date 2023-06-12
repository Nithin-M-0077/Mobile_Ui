import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:almudabir/Psvgs.dart';
import 'package:almudabir/View/DashboardUi/DashboardUi.dart';
import 'package:almudabir/View/MainLoginUi/sub/InputFieldSection.dart';
import 'package:almudabir/View/MainLoginUi/sub/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLoginPage extends StatefulWidget {
  const MainLoginPage({Key? key}) : super(key: key);

  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {


  Widget loginButtonText(){
    return Text(
      'Login',
      style: TextStyle(
        letterSpacing: 0.5,
        fontWeight: FontWeight.w600,
        fontSize: 17,
        color: PSettings.color2,
        fontFamily: PFontFamily.sf_ui_display,
      ),
    );
  }

  Widget LoginButton() {
    return Container(
      margin: const EdgeInsets.only(left: 28, right: 28),
      height: 50,
      color: const Color(0xff2EB34A),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DashboardUi()),
          );
        },
        child: Center(
          child:loginButtonText(),
        ),
      ),
    );
  }


  Widget LoginWithFacebookGoogle({required String text, required String svgAsset}) {
    return Container(
      margin: const EdgeInsets.only(left: 27, right: 27),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffd5d5d5),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              svgAsset,
              width: 24,
              height: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13.0,
                color: const Color(0xff757575),
                fontFamily: PFontFamily.sf_ui_display,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget main(){
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mainLoginText(),
            const SizedBox(height: 50,),
            usernameInputField(),
            passwordInputField(),
            const SizedBox(height: 15,),
            LoginButton(),
            const SizedBox(height: 15,),
            signUpGreenText(),
            const SizedBox(height: 25,),
            orText(),
            const SizedBox(height: 10,),
            LoginWithFacebookGoogle(text: 'Login with Facebook', svgAsset: PSvgs.sv37MS,),
            const SizedBox(height: 30,),
            LoginWithFacebookGoogle(text: 'Login with Google', svgAsset: PSvgs.sv36MS,),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return main();
  }
}
