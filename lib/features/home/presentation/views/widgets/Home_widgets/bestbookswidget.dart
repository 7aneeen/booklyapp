import 'package:booklyapp/core/models/booksmodel.dart';
import 'package:booklyapp/features/home/presentation/views/book_details.dart';
import 'package:flutter/material.dart';

class Bookswidget extends StatelessWidget {
  const Bookswidget({super.key, required this.bModel});
  final Booksmodel bModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return BookDetails(
              Dbook: bModel,
            );
          }));
        },
        child: Container(
          height: 150,
          width: double.infinity,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                          "${bModel.volumeInfo?.imageLinks?.smallThumbnail}"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${bModel.volumeInfo?.title}",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          "${bModel.volumeInfo?.publisher}",
                          style: TextStyle(fontSize: 15, color: Colors.white,),
                          
                          ),
                        Row(
                          children: [
                            Text("${bModel.saleInfo?.saleability}",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            SizedBox(
                              width: 50,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 14,
                                  color: Colors.yellow,
                                ),
                                Text("4.8",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
