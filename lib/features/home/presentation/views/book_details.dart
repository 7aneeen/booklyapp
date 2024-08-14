import 'package:booklyapp/core/models/booksmodel.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/Book_widgets/details_widget.dart';
import 'package:flutter/material.dart';
class BookDetails extends StatelessWidget {
  const BookDetails({super.key, required this.Dbook});
  final Booksmodel Dbook;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100B20),
      appBar: AppBar(
      backgroundColor: Color(0xff100B20),
        actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.shopping_cart_outlined,size: 25,color: Colors.white,),
        ),
      ],),
      body: DetailsWidget(Dbook: Dbook),
    );
  }
}