import 'package:flutter/material.dart';

class liquor_Detail extends StatefulWidget {
  const liquor_Detail({Key? key}) : super(key: key);

  @override
  State<liquor_Detail> createState() => _liquor_DetailState();
}

class _liquor_DetailState extends State<liquor_Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.width) * 3 / 5,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("image/liquor1.png"))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Cutty Sark Original',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '커티샥 오리지널',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
                Text("    51개의 리뷰")
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 12,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      "카테고리\t",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Text(
                      "블렌디드 위스키\t",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "국가\t",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Text(
                      "스코틀랜드",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ]),
                  Row(children: [
                    Text(
                      "용량\t",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Text(
                      "500ml\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "가격\t",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Text(
                      "25000\t",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ]),
                  Row(children: [
                    Text(
                      "도수\t",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Text(
                      "30%\t",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              height: 12,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          // FAB를 눌렀을 때 수행할 작업
        },
        child: Icon(Icons.share),
      ),

    );
  }
}
