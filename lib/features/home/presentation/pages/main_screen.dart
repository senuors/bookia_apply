import 'package:bookia_apply/features/home/presentation/pages/bookmark_screen.dart';
import 'package:bookia_apply/features/home/presentation/pages/home_screen.dart';
import 'package:bookia_apply/features/home/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/utils/app_colors.dart';
import 'cart_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    BookmarkScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          buildBottomNavigationBarItem(path: AppImages.homeSvg, label: 'home'),
          buildBottomNavigationBarItem(
            label: 'bookmark',
            path: AppImages.bookmarkSvg,
          ),
          buildBottomNavigationBarItem(label: 'cart', path: AppImages.cart),
          buildBottomNavigationBarItem(
            label: 'profile',
            path: AppImages.profileSvg,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required String label,
    required String path,
  }) {
    return BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        path,
        colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
      ),
      icon: SvgPicture.asset(path),
      label: label,
    );
  }
}

//    sayed332@gmail.com
//    12345678
