import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'custom_boost_mood.dart';

class CustomCarouselSlider extends StatelessWidget {
  CustomCarouselSlider({super.key});

  int selected = 0;

  List<Widget> boostMood = [
    const CustomBoostMood(
        backgroundColor: Color(
      0xFFECFDF3,
    )),
    const CustomBoostMood(
      backgroundColor: Colors.orange,
    ),
    const CustomBoostMood(
      backgroundColor: Colors.cyanAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return Column(
      children: [
        CarouselSlider.builder(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  appProvider.carouselSlider(index);
                },
                height: 168,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                viewportFraction: 1,
                scrollDirection: Axis.horizontal),
            itemCount: boostMood.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    boostMood[itemIndex]),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSmoothIndicator(
              activeIndex: appProvider.selectCarouselSlider,
              count: boostMood.length,
              effect: const ScaleEffect(
                activeDotColor: Colors.grey,
                dotColor: Color(0xFFD9D9D9),
                dotWidth: 6,
                dotHeight: 6,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
