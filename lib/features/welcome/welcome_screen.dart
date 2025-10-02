import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/routes/navigation.dart';
import 'package:bookia_apply/features/auth/presentation/pages/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/text_style.dart';
import '../../core/widgets/main_button.dart';
import '../auth/presentation/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                Spacer(flex: 2),
                SvgPicture.asset(AppImages.logoSvg),
                const Gap(28),
                Text('Order Your Book Now!', style: TextStyles.textStyle20),
                Spacer(flex: 6),
                Main_Button(
                  text: 'Login',
                  onPressed: () {
                    pushReplacementTo(context, LoginScreen());
                  },
                ),
                Gap(12),
                Main_Button(
                  text: 'Register',
                  bgColor: AppColors.accentColor,
                  onPressed: () {
                    pushReplacementTo(context, RegisterScreen());
                  },
                  textColor: AppColors.darkColor,
                ),

                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
