import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.width) * 3 / 5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/godfather.jpg'))),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '쭈팡이',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '시그니처 갓파더 레시피',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '2022. 12. 24',
            style: TextStyle(fontSize: 13, color: Colors.grey),
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
          const Text.rich(TextSpan(
              text:
                  '퇴근길에 재즈와 함께 갓파더 한잔하고 싶은 밤이네요\n 제가 자주 즐기는 갓파더 레시피 공유할께요!\n\n',
              children: <TextSpan>[
                TextSpan(
                    text: '소요시간\n',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '3분\n\n'),
                TextSpan(
                    text: '재료\n',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' •  스카치 위스키 1.5oz\n',
                    style: TextStyle(decoration: TextDecoration.underline)),
                TextSpan(
                    text: ' •  아마레또 0.5oz\n\n',
                    style: TextStyle(decoration: TextDecoration.underline)),
                TextSpan(
                    text: '레시피\n',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '  1. 스카치 위스키와 아마레또를 섞는다.\n\n'),
              ])),
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.width) * 3 / 5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/godfather.jpg'))),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.width) * 1 / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
