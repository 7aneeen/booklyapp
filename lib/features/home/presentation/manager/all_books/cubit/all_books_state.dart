import 'package:booklyapp/core/models/booksmodel.dart';

abstract class AllBooksState {}

class AllBooksInitial extends AllBooksState {}

class AllBooksLoading extends AllBooksState {}

class AllBooksFaliure extends AllBooksState {
  final String error;

  AllBooksFaliure(this.error);
}

class AllBooksSuccess extends AllBooksState {
  final List<Booksmodel> books;

  AllBooksSuccess(this.books);
}
