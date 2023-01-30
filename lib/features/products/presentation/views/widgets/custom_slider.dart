import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
   CustomSlider({Key? key,  this.height = 110}) : super(key: key);

    final List<String> bannarList = [
     'assets/images/bannar.png',
     'assets/images/bannar.png',
     'assets/images/bannar.png',
     'assets/images/bannar.png',
   ];
final double height ;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: bannarList
          .map((item) => Container(
        child: Center(
            child:
            Image.asset(item, fit: BoxFit.cover, width: MediaQuery.of(context).size.width,)),
      ))
          .toList(),
      options: CarouselOptions(
        height: height,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 900),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

