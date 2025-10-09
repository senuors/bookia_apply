import 'package:bookia_apply/core/constants/app_fonts.dart';
import 'package:bookia_apply/core/services/dio_provider.dart';
import 'package:bookia_apply/core/utils/app_colors.dart';
import 'package:bookia_apply/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bookia_apply/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/text_style.dart';

void main() {
  DioProvider.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bookia App Demo',
        theme: ThemeData(
          dividerColor: AppColors.backgroundColor,
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: AppColors.darkColor),
          ),
          fontFamily: AppFonts.DMSerifDisplay,
          scaffoldBackgroundColor: AppColors.backgroundColor,
          appBarTheme: AppBarTheme(
            surfaceTintColor: Colors.transparent,
            backgroundColor: AppColors.backgroundColor,
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyles.textStyle16.copyWith(
              color: AppColors.grayColor,
            ),
            fillColor: AppColors.accentColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppColors.borderColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppColors.errorColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppColors.borderColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppColors.errorColor),
            ),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
