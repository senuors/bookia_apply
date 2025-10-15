import 'package:bookia_apply/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:bookia_apply/features/auth/presentation/pages/create_new_password.dart';
import 'package:bookia_apply/features/auth/presentation/pages/forget_password.dart';
import 'package:bookia_apply/features/auth/presentation/pages/login_screen.dart';
import 'package:bookia_apply/features/auth/presentation/pages/password_changed_screen.dart';
import 'package:bookia_apply/features/auth/presentation/pages/register_screen.dart';
import 'package:bookia_apply/features/home/presentation/pages/main_screen.dart';
import 'package:bookia_apply/features/splash/splash_screen.dart';
import 'package:bookia_apply/features/welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/otp_screen.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String welcome = '/welcome';
  static const String register = '/register';
  static const String newpassword = '/createnewpassword';
  static const String forgetpassword = '/forgetpassword';
  static const String otpscreen = '/otpscreen';
  static const String passchanges = '/passwordchanges';
  static const String homescreen = '/homescreen';

  static final routes = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(path: splash, builder: (context, state) => const SplashScreen()),
      GoRoute(
        path: login,
        builder: (context, state) => BlocProvider(
          create: (BuildContext context) => AuthCubit(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => BlocProvider(
          create: (BuildContext context) => AuthCubit(),
          child: const RegisterScreen(),
        ),
      ),
      GoRoute(
        path: forgetpassword,
        builder: (context, state) => BlocProvider(
          create: (BuildContext context) => AuthCubit(),
          child: ForgetPassword(email: state.extra as String),
        ),
      ),
      GoRoute(
        path: newpassword,
        builder: (context, state) => const CreateNewPassword(),
      ),

      GoRoute(path: otpscreen, builder: (context, state) => const OtpScreen()),
      GoRoute(
        path: passchanges,
        builder: (context, state) => const PasswordChangedScreen(),
      ),
      GoRoute(
        path: welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: homescreen,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
