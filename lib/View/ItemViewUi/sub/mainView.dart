import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/ItemViewUi/sub/ItemInfo.dart';
import 'package:almudabir/View/ItemViewUi/sub/ScrollContainers.dart';
import 'package:almudabir/View/ItemViewUi/sub/TextWidgets.dart';
import 'package:flutter/material.dart';

class mainView extends StatefulWidget {
  const mainView({Key? key}) : super(key: key);

  @override
  State<mainView> createState() => _mainViewState();
}

class _mainViewState extends State<mainView> {


  Widget mainText() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        top: 20,
      ),
      child: Text(
        'Carrot',
        style: TextStyle(
          letterSpacing: 0.3,
          fontSize: 22,
          fontFamily: PFontFamily.sf_ui_display,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget ItemImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 10, right: 40),
      child: Container(
        color: PSettings.color2,
        height: 225,
        width: 225,
        child: const Image(
          image: AssetImage('asset/images/carrot.png'),
        ),
      ),
    );
  }

  Widget subHeadingText1() {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Text(
        'Product Details',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: PFontFamily.sf_ui_display,
        ),
      ),
    );
  }
  Widget subHeadingText2() {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Text(
        'Product Details',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          fontFamily: PFontFamily.sf_ui_display,
        ),
      ),
    );
  }
  Widget subHeadingText3() {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Text(
        'Similar Products',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontFamily: PFontFamily.sf_ui_display,
        ),
      ),
    );
  }
  Widget horizontalScrollContainer() {
    return Row(
      children: [
        scrollContainerWidget(
          title: 'Onion',
          imageUrl: 'asset/images/onion.png',
        ),
        scrollContainerWidget(
          title: 'Tomato',
          imageUrl: 'asset/images/tomato.png',
        ),
        scrollContainerWidget(
          title: 'Carrot',
          imageUrl: 'asset/images/carrot.png',
        ),
      ],
    );
  }

  Widget main() {
    return ListView(
      children: [
        mainText(),
        ItemImage(),
        const SizedBox(height: 15),
        subHeadingText1(),
        const SizedBox(height: 15),
        subHeadingText2(),
        const SizedBox(height: 10),
        descriptionText(),
        const SizedBox(height: 10),
        dropDownWithText(),
        const SizedBox(height: 10),
        productInfo(),
        const SizedBox(height: 70),
        subHeadingText3(),
        const SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: horizontalScrollContainer(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return main();
  }
}
