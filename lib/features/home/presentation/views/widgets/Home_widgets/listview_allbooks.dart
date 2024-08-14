import 'package:booklyapp/features/home/presentation/manager/all_books/cubit/all_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/manager/all_books/cubit/all_books_state.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/Home_widgets/allbooks_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListviewAllbooks extends StatefulWidget {
  const ListviewAllbooks({super.key});

  @override
  State<ListviewAllbooks> createState() => _ListviewAllbooksState();
}

class _ListviewAllbooksState extends State<ListviewAllbooks> {
//  List<Booksmodel> data = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubit, AllBooksState>(builder: (context, state) {
      if (state is AllBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return AllbooksWidget(
                  book: state.books[index],
                  
                );
              },
            ),
          ),
        );
      } else if (state is AllBooksFaliure) {
        return Text("ERROR");
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}

// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   throw UnimplementedError();
// }

/*SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return AllbooksWidget(
              book: data, index: index,
            );
          },
        ),
      ),
    ); */