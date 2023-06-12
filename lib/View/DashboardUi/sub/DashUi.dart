import 'package:almudabir/PFontFamily.dart';
import 'package:almudabir/PSettings.dart';
import 'package:almudabir/View/DashboardUi/sub/rowSection.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class DashUi extends StatefulWidget {
  const DashUi({Key? key}) : super(key: key);

  @override
  State<DashUi> createState() => _DashUiState();
}

class _DashUiState extends State<DashUi> {

  Widget searchbar(){
    return  Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: PSettings.color8),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5),
              child: Icon(
                Icons.search,
                color: PSettings.color8,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Search for products',
                  style: TextStyle(
                      fontSize: 10,
                      color: PSettings.color8,
                      fontWeight: FontWeight.w700,
                      fontFamily: PFontFamily.sf_ui_display
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget myCarouselSlider(String image) {
    return CarouselSlider(
      items: [
        Image.asset(image),
      ],
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlay: true,
        onPageChanged: (index, reason) {},
      ),
    );
  }

  Widget main(){
    return ListView(
      children: [
        searchbar(),
        const SizedBox(height: 10),
        myCarouselSlider('asset/images/Carousel.png'),
        const SizedBox(height: 30,),
        rowSection1(),
        const SizedBox(height: 18,),
        rowSection2and3(
            item1: 'Cool Drinks',
            itemImage1: 'asset/images/drinks.png',
            item2: 'Frozen Foods',
            itemImage2: 'asset/images/frozen.png',
            item3: 'Tea,Cofee and health drinks',
            itemImage3: 'asset/images/teacofee.png'
        ),
        rowSection2and3(
            item1: 'Biscuits',
            itemImage1: 'asset/images/Biscuits.png',
            item2: 'Sweet tooth',
            itemImage2: 'asset/images/sweet.png',
            item3:  'Noodles',
            itemImage3: 'asset/images/noodles.png'
        ),
        myCarouselSlider('asset/images/carousell.png'),


      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return main();
  }
}
