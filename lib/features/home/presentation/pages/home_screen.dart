import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/utils/app_colors.dart';
import 'package:bookia_apply/features/home/presentation/widgets/best_seller_builder.dart';
import 'package:bookia_apply/features/home/presentation/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppImages.logoSvg, height: 30),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.search, height: 20),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
            child: Column(
              children: [
                HomeSlider(),
                Gap(20),
                BestSellerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
