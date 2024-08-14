import 'package:booklyapp/features/home/presentation/manager/best_seller/cubit/best_seller_cubit.dart';
import 'package:booklyapp/features/home/presentation/manager/best_seller/cubit/best_seller_state.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/Home_widgets/bestbookswidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListView extends StatefulWidget {
  const BookListView({super.key});

  @override
  State<BookListView> createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
        builder: (context, state) {
      if (state is BestSellerSuccess) {
        return SizedBox(
          height: 460,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Bookswidget(bModel: state.books[index]);
              },
            ),
          ),
        );
      } else if (state is BestSellerFailuer) {
        return Text("$state",style: TextStyle(color: Colors.white),);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}

/*

 */