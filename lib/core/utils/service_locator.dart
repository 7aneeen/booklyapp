import 'package:booklyapp/core/utils/apiService.dart';
import 'package:booklyapp/features/home/data/repo/homeRepoImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Apiservice>(Apiservice(Dio()));
  getIt.registerSingleton<Homerepoimpl>(Homerepoimpl(getIt.get<Apiservice>()));
}
