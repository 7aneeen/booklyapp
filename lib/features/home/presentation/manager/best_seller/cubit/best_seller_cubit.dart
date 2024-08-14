import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/repo/homeRepoImpl.dart';
import 'package:booklyapp/features/home/presentation/manager/best_seller/cubit/best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  final Homerepoimpl homerepoimpl;
  BestSellerCubit(this.homerepoimpl) : super(BestSellerInitial());
  fatchBestSeller() async {
    emit(BestSellerLoading());
    var result = await homerepoimpl.featchBestSellerBooks();
    result.fold((ifLeft) {
      emit(BestSellerFailuer(ifLeft.error));
    }, (ifRight) {
      emit(BestSellerSuccess(ifRight));
    });
  }
}
