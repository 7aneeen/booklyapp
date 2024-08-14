import 'package:booklyapp/core/models/booksmodel.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.Dbook});
  final Booksmodel Dbook;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            width: 160,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "${Dbook.volumeInfo?.imageLinks?.smallThumbnail}")),
            ),
          ),
        ),
        Text(
          "${Dbook.volumeInfo?.title}",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white,),textAlign: TextAlign.center,
          maxLines: 3,
        ),
        Text(
          "${Dbook.volumeInfo?.publisher}",
          style: TextStyle(fontSize: 18, color: Colors.white),
          maxLines: 3,
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 15,
              color: Colors.yellow,
            ),
            Text(" 4.8",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                )),
          ],
        ),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                color: Colors.white
              ),
              child: Center(child: Text("19.99€",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
            ),
            Container(
              height: 45,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                color: Color(0x99EF8262)
              ),
              child: Center(child: Text("Free preview",style: TextStyle(fontSize: 19,color: Colors.white),)),
            ),
          ],
        )
      ],
    );
  }
}
