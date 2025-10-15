import 'package:bookia_apply/core/constants/app_images.dart';
import 'package:bookia_apply/core/widgets/dialogs.dart';
import 'package:bookia_apply/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/routes/navigation.dart';
import '../../../../core/routes/roues.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/main_button.dart';
import '../../../../core/widgets/password_text_form_field.dart';
import '../../data/models/request/auth_params.dart';
import '../cubit/auth_cubit.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                Navigator.pop(context);
              },
              child: SvgPicture.asset(AppImages.backSvg),
            ),
          ],
        ),
      ),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthLoadingState) {
            showLoadingDialog(context);
          } else if (state is AuthErrorState) {
            pop(context);
            showErrorDialog(context, 'Auth Failed ..');
          } else if (state is AuthSuccessState) {
            // push to home
            pushToBase(context, Routes.homescreen);

            print('Auth Success');
          }
        },
        child: Padding(
          padding: EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Form(
              key: cubit.formKey,
              child: Column(
                children: [
                  Text(
                    'Hello! Register to get started',
                    style: TextStyles.textStyle30,
                  ),
                  Gap(24),
                  CustomTextFormField(
                    controller: cubit.usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your User Name';
                      }
                      return null;
                    },
                    hintText: 'User Name ',
                  ),
                  Gap(12),
                  CustomTextFormField(
                    controller: cubit.emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    hintText: 'email ',
                  ),
                  Gap(12),
                  PasswordTextFormField(
                    controller: cubit.passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    hintText: 'password ',
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [SvgPicture.asset(AppImages.eyeSvg)],
                    ),
                  ),
                  Gap(12),
                  PasswordTextFormField(
                    controller: cubit.confirmpasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      } else if (value != cubit.passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    hintText: 'confirm password ',
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [SvgPicture.asset(AppImages.eyeSvg)],
                    ),
                  ),

                  Gap(12),
                  Main_Button(
                    text: 'Register',
                    onPressed: () {
                      if (cubit.formKey.currentState!.validate()) {
                        context.read<AuthCubit>().register(
                          AuthParams(
                            name: cubit.usernameController.text,
                            email: cubit.emailController.text,
                            password: cubit.passwordController.text,
                            password_confirmation:
                                cubit.confirmpasswordController.text,
                          ),
                        );
                      }
                    },
                  ),
                  Gap(30),
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
        Text('Already have an account? ', style: TextStyles.textStyle15),
        TextButton(
          onPressed: () {
            pushReplacementTo(context, Routes.login);
          },
          child: Text(
            'Login Now',
            style: TextStyles.textStyle15.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
