import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/routes/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/routes/roues.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widgets/main_button.dart';
import '../widgets/pipput_package.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreen();
}

class _OtpScreen extends State<OtpScreen> {
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(AppImages.backSvg),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(22),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text('OTP Verification', style: TextStyles.textStyle30),
                Gap(12),
                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: TextStyles.textStyle16.copyWith(
                    color: AppColors.grayColor,
                  ),
                ),
                Gap(30),

                PinputExample(),
                Gap(38),

                Main_Button(
                  text: 'Verify',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('Login successful');
                      pushReplacementTo(context, Routes.passchanges);
                    }
                  },
                ),
                Gap(24),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(22),
        child: RowBottomNaviBar(),
      ),
    );
  }
}

class RowBottomNaviBar extends StatelessWidget {
  const RowBottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Didn’t received code?', style: TextStyles.textStyle15),
        TextButton(
          onPressed: () {},
          child: Text(
            'Resend',
            style: TextStyles.textStyle15.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
