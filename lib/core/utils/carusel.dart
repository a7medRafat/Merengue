import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
    required this.itemCount,
    required this.widget,
  });

  final int itemCount;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          widget,
      options: CarouselOptions(
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          enlargeFactor: 0.2,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          aspectRatio: 16 / 9,
          padEnds: false,
          onPageChanged: (index, reason) {}),
    );
  }
}
