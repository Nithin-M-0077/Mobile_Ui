import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/DashboardUi/sub/DashUi.dart';
import 'package:almudabir/View/MyAccountUi/myAccountUi.dart';
import 'package:flutter/material.dart';

class DashboardUi extends StatefulWidget {
  const DashboardUi({Key? key}) : super(key: key);

  @override
  State<DashboardUi> createState() => _DashboardUiState();
}

class _DashboardUiState extends State<DashboardUi> {
  Widget appBarText() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: Text(
            'Delivery in 9 Minutes',
            style: TextStyle(
                color: PSettings.color16,
                fontWeight: FontWeight.w600,
                fontSize: 19,
                fontFamily: PFontFamily.sf_ui_display),
          ),
        ),
        Row(
          children: [
            Text(
              'Home - Nandhanamhouse.......',
              style: TextStyle(
                fontSize: 14,
                fontFamily: PFontFamily.sf_ui_display,
                color: PSettings.color8,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: PSettings.color8,
            ),
          ],
        ),
      ],
    );
  }

  Widget myAppBar() {
    return AppBar(
      elevation: 0.2,
      backgroundColor: PSettings.color1,
      title: appBarText(),
      actions: [
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const  MyAccountUi()),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
            padding: const EdgeInsets.all(8),
            width: 50,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xffFFD86A),
              shape: BoxShape.circle,
            ),
            child: Image.asset('asset/images/user.png'),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PSettings.color2,
      appBar: PreferredSize(preferredSize: Size(size.width, 80), child: myAppBar()),
      body: const DashUi(),
    );
  }
}
