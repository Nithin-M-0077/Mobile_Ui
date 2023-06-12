import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/ItemViewUi/sub/mainView.dart';
import 'package:flutter/material.dart';

class ItemViewUi extends StatefulWidget {
  const ItemViewUi({Key? key}) : super(key: key);

  @override
  State<ItemViewUi> createState() => _ItemViewUiState();
}

class _ItemViewUiState extends State<ItemViewUi> {

  AppBar ItemViewAppBar() {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: PSettings.color2,
      elevation: 1,
      title: const Text(
        'Item view',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          letterSpacing: 0.1,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 22,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 22,
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ItemViewAppBar(),
      body: const mainView(),
    );
  }
}
