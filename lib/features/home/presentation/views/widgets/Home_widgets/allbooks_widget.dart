import 'package:booklyapp/core/models/booksmodel.dart';
import 'package:flutter/material.dart';

class AllbooksWidget extends StatelessWidget {
  const AllbooksWidget({super.key, required this.book});
final Booksmodel book;
  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 130,
        height: 200,
      //  margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "${book.volumeInfo?.imageLinks?.smallThumbnail}")),
        ),
      ),
    );
  }
}


// Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         margin: EdgeInsets.all(5.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8.0),
//           image: DecorationImage(
//               fit: BoxFit.fill,
//               image: NetworkImage(
//                   "${widget.book[widget.index].volumeInfo?.imageLinks?.smallThumbnail}")),
//         ),
//       ),
//     );

  // Container(
  //           margin: EdgeInsets.all(5.0),
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(8.0),
  //             image: DecorationImage(
  //                 fit: BoxFit.fill, image: AssetImage(AssetsData.testImage)),
  //           ),
  //         ),