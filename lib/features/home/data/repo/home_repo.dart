import 'dart:developer';

import 'package:bookia_apply/core/services/api_endpoints.dart';
import 'package:bookia_apply/core/services/dio_provider.dart';
import 'package:bookia_apply/features/home/data/model/BestSellerResponse.dart';

class HomeRepo {
  Future<BestSellerResponse?> getBestSeller() async {
    try {
      var res = await DioProvider.get(
        endpoint: ApiEndpoints.productsbestseller,
      );
      if (res.statusCode == 200) {
        return BestSellerResponse.fromJson(res.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }
}
