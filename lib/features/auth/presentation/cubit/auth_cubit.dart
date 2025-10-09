import 'package:bookia_apply/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/request/auth_params.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();

  var usernameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  AuthCubit() : super(AuthInitalState());

  Future<void> register(AuthParams params) async {
    emit(AuthLoadingState());
    var params = AuthParams(
      name: usernameController.text,
      email: emailController.text,
      password: passwordController.text,
      password_confirmation: confirmpasswordController.text,
    );
    var res = await AuthRepo.register(params);

    if (res != null) {
      emit(AuthSuccessState());
    } else {
      emit(AuthErrorState());
    }
  }

  Future<void> login(AuthParams params) async {
    emit(AuthLoadingState());
    var params = AuthParams(
      email: emailController.text,
      password: passwordController.text,
    );
    var res = await AuthRepo.login(params);

    if (res != null) {
      emit(AuthSuccessState());
    } else {
      emit(AuthErrorState());
    }
  }
}
