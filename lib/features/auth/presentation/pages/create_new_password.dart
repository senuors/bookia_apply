import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/routes/navigation.dart';
import 'package:bookia_apply/features/auth/presentation/pages/password_changed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widgets/main_button.dart';
import '../../../../core/widgets/password_text_form_field.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPassword();
}

class _CreateNewPassword extends State<CreateNewPassword> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
                Text('Create new password', style: TextStyles.textStyle30),
                Gap(12),
                Text(
                  "Your new password must be unique from those previously used.",
                  style: TextStyles.textStyle16.copyWith(
                    color: AppColors.grayColor,
                  ),
                ),
                Gap(32),

                PasswordTextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  hintText: 'New Password',
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [SvgPicture.asset(AppImages.eyeSvg)],
                  ),
                ),
                Gap(12),
                PasswordTextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  hintText: 'Confirm Password',
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [SvgPicture.asset(AppImages.eyeSvg)],
                  ),
                ),
                Gap(12),

                Gap(12),
                Main_Button(
                  text: 'Reset Password',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      pushReplacementTo(context, PasswordChangedScreen());
                    }
                  },
                ),
                Gap(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
