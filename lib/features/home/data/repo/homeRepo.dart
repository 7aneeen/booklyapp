import 'package:booklyapp/core/errors/failers.dart';
import 'package:booklyapp/core/models/booksmodel.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failers, List<Booksmodel>>> featchAllBooks();
  Future<Either<Failers, List<Booksmodel>>> featchBestSellerBooks();
}
