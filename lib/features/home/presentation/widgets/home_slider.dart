import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/utils/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

 

class HomeSlider extends StatefulWidget {
  const HomeSlider({
    super.key,
  });

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
            return ClipRRect(borderRadius: BorderRadius.circular(10),
             child: Image.asset(AppImages.welcome, fit: BoxFit.cover, width: double.infinity));
          },
          options: CarouselOptions(
            height: 150,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 900),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.5,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        Gap(15),
        AnimatedSmoothIndicator(    
          activeIndex: activeIndex,
          count: 4,
          effect: ExpandingDotsEffect(
            dotHeight: 7,
            dotWidth: 7,
    spacing: 4.0,
    activeDotColor: AppColors.primaryColor,
     dotColor: AppColors.grayColor,    
     expansionFactor: 4,    
        ), 
    )
      ],
    );
  }
}
