import 'package:booklyapp/core/utils/asset.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/features/home/data/repo/homeRepoImpl.dart';
import 'package:booklyapp/features/home/presentation/manager/all_books/cubit/all_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/manager/best_seller/cubit/best_seller_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/Home_widgets/list_of_bestbooks.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/Home_widgets/listview_allbooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (create) =>
                AllBooksCubit(getIt.get<Homerepoimpl>())..fetchAllBooks()),
        BlocProvider(
            create: (create) =>
                BestSellerCubit(getIt.get<Homerepoimpl>())..fatchBestSeller()),
      ],
      child:Scaffold(
      backgroundColor: Color(0xff100B20),
      appBar: CustomAppBar(
          title: Row(
            children: [
              Image.asset(
                AssetsData.logo,
                scale: 3,
              ),
            ],
          ),
          backgroundColor: Color(0xff100B20),
          height: 80),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListviewAllbooks(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Best seller",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BookListView(),
          )
        ],
      ),
    )
      );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Color backgroundColor;
  final double height;

  const CustomAppBar(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      toolbarHeight: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            // Action for notifications
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}

/* */

      /*Scaffold(
      backgroundColor: Color(0xff100B20),
      appBar: CustomAppBar(
          title: Row(
            children: [
              Image.asset(
                AssetsData.logo,
                scale: 3,
              ),
            ],
          ),
          backgroundColor: Color(0xff100B20),
          height: 80),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListviewAllbooks(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Best seller",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BookListView(),
          )
        ],
      ),
    ); */