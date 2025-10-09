import 'dart:developer';

import 'package:bookia_apply/core/services/dio_provider.dart';
import 'package:bookia_apply/features/auth/data/models/request/auth_params.dart';
import 'package:bookia_apply/features/auth/data/models/response/auth_response.dart';

import '../../../../core/services/api_endpoints.dart';

class AuthRepo {
  static Future<AuthResponse?> register(AuthParams params) async {
    try {
      var res = await DioProvider.post(
        endpoint: ApiEndpoints.register,
        data: params.toJson(),
      );

      if (res.statusCode == 201) {
        return AuthResponse.fromJson(res.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<AuthResponse?> login(AuthParams params) async {
    try {
      var res = await DioProvider.post(
        endpoint: ApiEndpoints.login,
        data: params.toJson(),
      );
      if (res.statusCode == 200) {
        return AuthResponse.fromJson(res.data);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
