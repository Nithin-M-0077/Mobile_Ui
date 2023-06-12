import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/ItemViewUi/ItemViewUi.dart';
import 'package:almudabir/View/MyAccountUi/sub/AccountUi.dart';
import 'package:flutter/material.dart';
class MyAccountUi extends StatefulWidget {
  const MyAccountUi({Key? key}) : super(key: key);

  @override
  State<MyAccountUi> createState() => _MyAccountUiState();
}

class _MyAccountUiState extends State<MyAccountUi> {

  AppBar CustomAppBar() {
    return AppBar(
      backgroundColor: PSettings.color2,
      elevation: 0.5,
      title: const Text(
        'My Account',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w700,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: PSettings.color16,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ItemViewUi()),
          );
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const AccountUi(),
    );
  }
}
