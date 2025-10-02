import 'package:bookia_apply/core/services/dio_provider.dart';

import '../../../../core/services/api_endpoints.dart';

class AuthRepo {
  register() async {
    var res = await DioProvider.post(
      endpoint: ApiEndpoints.register,
      data: {
        "name": "Ahmed",
        "email": "sayed12301144@gmail.com",
        "password": "12345678",
        "password_confirmation": "12345678",
      },
    );

    if (res.statusCode == 201) {
      return res.data;
    } else {}
  }
}
