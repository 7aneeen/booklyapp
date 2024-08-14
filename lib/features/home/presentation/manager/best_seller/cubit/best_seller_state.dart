import 'package:booklyapp/core/models/booksmodel.dart';

abstract class BestSellerState {}

class BestSellerInitial extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerFailuer extends BestSellerState {
  final String error;

  BestSellerFailuer(this.error);
}

class BestSellerSuccess extends BestSellerState {
  final List<Booksmodel> books;

  BestSellerSuccess(this.books);
}
