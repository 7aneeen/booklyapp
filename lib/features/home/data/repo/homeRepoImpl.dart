import 'package:booklyapp/core/errors/failers.dart';
import 'package:booklyapp/core/models/booksmodel.dart';
import 'package:booklyapp/core/utils/apiService.dart';
import 'package:booklyapp/features/home/data/repo/homeRepo.dart';
import 'package:dartz/dartz.dart';

class Homerepoimpl implements Homerepo {
  final Apiservice apiservice;

  Homerepoimpl(this.apiservice);
  @override
  Future<Either<Failers, List<Booksmodel>>> featchAllBooks() async {
    try {
      var data = await apiservice.get(endPoints: "volumes?q=computerscience");
      List<Booksmodel> books = [];
      for (var item in data["items"]) {
        books.add(Booksmodel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(serverError(e.toString()));
    }
  }

  @override
  Future<Either<Failers, List<Booksmodel>>> featchBestSellerBooks() async {
    try {
      var data = await apiservice.get(endPoints: "volumes?Sorting=bestseller&q=space");
      List<Booksmodel> books2 = [];
      for (var item in data["items"]) {
        books2.add(Booksmodel.fromJson(item));
      }
      return right(books2);
    } catch (e) {
      return left(serverError(e.toString()));
    }
  }
}
