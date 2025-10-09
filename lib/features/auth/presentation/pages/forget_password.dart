import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/routes/navigation.dart';
import 'package:bookia_apply/features/auth/presentation/pages/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/main_button.dart';
import 'otp_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
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
                Text('Forgot Password?', style: TextStyles.textStyle30),
                Gap(12),
                Text(
                  "Don't worry! It occurs. Please enter the email address linked with your account.",
                  style: TextStyles.textStyle16.copyWith(
                    color: AppColors.grayColor,
                  ),
                ),
                Gap(30),

                CustomTextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  hintText: 'Enter your email ',
                ),
                Gap(38),

                Main_Button(
                  text: 'Send Code',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('Login successful');
                      pushReplacementTo(context, OtpScreen());
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
        Text('Remember Password?', style: TextStyles.textStyle15),
        TextButton(
          onPressed: () {
            pushReplacementTo(context, RegisterScreen());
          },
          child: Text(
            'Login',
            style: TextStyles.textStyle15.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
