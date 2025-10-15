import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/routes/navigation.dart';
import 'package:bookia_apply/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bookia_apply/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/routes/roues.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/main_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key, required this.email});

  final String email;

  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AuthCubit>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                pop(context);
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
            key: cubit.formKey,
            child: BlocListener<AuthCubit, AuthState>(
              listener: (context, state) {
                // TODO: implement listener
              },
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
                    controller: cubit.emailController,
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
                      if (cubit.formKey.currentState!.validate()) {
                        print('Login successful');
                        pushReplacementTo(context, Routes.otpscreen);
                      }
                    },
                  ),
                  Gap(24),
                ],
              ),
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
            pushReplacementTo(context, Routes.login);
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
