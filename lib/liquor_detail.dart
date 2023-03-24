import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class LiquorPage extends StatefulWidget {
  const LiquorPage({Key? key}) : super(key: key);

  @override
  State<LiquorPage> createState() => _LiquorPageState();
}

class _LiquorPageState extends State<LiquorPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(""),
      Text("영문 명"),
      Text("한글 명"),
      Text("한글 명"),
      Row(children: [
        RatingBar(
            initialRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
                full: const Icon(Icons.star, color: Colors.orange),
                half: const Icon(
                  Icons.star_half,
                  color: Colors.orange,
                ),
                empty: const Icon(
                  Icons.star_outline,
                  color: Colors.orange,
                )),
            onRatingUpdate: (value) {
              setState(() {
              });
            }),
        Text("10만개의 리뷰"),
      ],),
      Row(children: [
        Text("카테고리  "),
        Text("카테고리  "),
        Text("국가  "),
        Text("스코틀랜드  "),
      ],),
      Row(children: [
        Text("용량 "),
        Text("500ml  "),
        Text("케이스  "),
        Text("없음  "),
      ],),
      Row(children: [
        Text("도수  "),
        Text("30%  "),
      ],),
    ],);
  }
}
