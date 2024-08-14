
import 'package:booklyapp/core/models/books/access_info.dart';
import 'package:booklyapp/core/models/books/sale_info.dart';
import 'package:booklyapp/core/models/books/volume_info.dart';

class Booksmodel {
VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Booksmodel({

    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  });

  factory Booksmodel.fromJson(Map<dynamic, dynamic> json) => Booksmodel(

    volumeInfo: json['volumeInfo'] == null
        ? null
        : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    saleInfo: json['saleInfo'] == null
        ? null
        : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
    accessInfo: json['accessInfo'] == null
        ? null
        : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
  );


}

