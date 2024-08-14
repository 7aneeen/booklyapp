import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/repo/homeRepoImpl.dart';
import 'package:booklyapp/features/home/presentation/manager/all_books/cubit/all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  final Homerepoimpl homerepoimpl;
  AllBooksCubit(this.homerepoimpl) : super(AllBooksInitial());
  fetchAllBooks() async {
    emit(AllBooksLoading());
    var result = await homerepoimpl.featchAllBooks();
    result.fold((ifLeft) {
      emit(AllBooksFaliure(ifLeft.error));
    }, (ifRight) {
      emit(AllBooksSuccess(ifRight));
    });
  }
}
