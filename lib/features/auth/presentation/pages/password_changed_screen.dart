import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/routes/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/routes/roues.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widgets/main_button.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.SuccessmarkSvg),
            const Gap(35),
            Text('Password Changed!', style: TextStyles.textStyle30),
            Gap(3),
            Text(
              "Your password has been changed \n successfully.",
              style: TextStyles.textStyle16.copyWith(
                color: AppColors.grayColor,
              ),
              textAlign: TextAlign.center,
            ),
            Gap(59),

            Main_Button(
              text: 'Back to Login',
              onPressed: () {
                pushReplacementTo(context, Routes.login);
              },
            ),
            Gap(12),
          ],
        ),
      ),
    );
  }
}
