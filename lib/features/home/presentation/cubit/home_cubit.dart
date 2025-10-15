import 'package:bookia_apply/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/BestSellerResponse.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  List<Products>? product;
  BestSellerResponse? bestSellerResponse;

  Future<void> getBestSellers() async {
    emit(HomeLoadingState());
    var res = await HomeRepo().getBestSeller();

    if (res != null) {
      product = res.data?.products;
      emit(HomeSuccessState());
    } else {
      emit(HomeErrorState());
    }
    ;
    //
  }
}
