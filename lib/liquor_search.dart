import 'package:flutter/material.dart';
import 'liquor_detail.dart';



class Hyun1 extends StatefulWidget {
  const Hyun1({Key? key}) : super(key: key);

  @override
  State<Hyun1> createState() => _Hyun1State();
}

class _Hyun1State extends State<Hyun1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(
      padding: EdgeInsets.all(10),
      child: Column(
          children: [
            Row(children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(
                    height: 1.5, // height 값 지정
                  ),
                ),
                flex: 8,
              ),
              Expanded(
                child: TextButton(
                  onPressed: null,
                  child: Text("취소"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size.zero), // TextButton 크기 0으로 설정
                    padding: MaterialStateProperty.all(
                      EdgeInsets.zero, // TextButton padding 제거
                    ),
                  ),
                ),
                flex: 1,
              )
            ]),


            Row(children: [
              Spacer(flex: 1),
              Text("술",style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(flex: 2),
              Text("레시피",style:TextStyle(fontWeight: FontWeight.bold),),
              Spacer(flex: 2),
              Text("스토리",style:TextStyle(fontWeight: FontWeight.bold),),
              Spacer(flex: 50),
            ],),
            Row(children: [

            ],),
            Expanded(child: Container(
              child: ListView(
                children: [
                  LiquorItem(name: "발렌타인 2000년산", type: "위스키", alcoholLevel: "100%", imgPath: "", like: "2000"),
                  LiquorItem(name: "발렌타인 2000년산", type: "위스키", alcoholLevel: "100%", imgPath: "", like: "2000"),
                  LiquorItem(name: "발렌타인 2000년산", type: "위스키", alcoholLevel: "100%", imgPath: "", like: "2000"),
                  LiquorItem(name: "발렌타인 2000년산", type: "위스키", alcoholLevel: "100%", imgPath: "", like: "2000"),
                  LiquorItem(name: "발렌타인 2000년산", type: "위스키", alcoholLevel: "100%", imgPath: "", like: "2000"),
                ],
              ),
            )),
          ]
      ),
    )
    );
  }
}
class LiquorItem extends StatefulWidget {
  const LiquorItem({
    Key? key,
    required this.name,
    required this.type,
    required this.alcoholLevel,
    required this.imgPath,
    required this.like,
  }) : super(key: key);
  final String name;    //술 이름
  final String type;    //술 종류
  final String alcoholLevel;    //술 도수
  final String imgPath; //이미지 경로
  final String like; //좋아요 수
  @override
  State<LiquorItem> createState() => _LiquorItemState();
}

class _LiquorItemState extends State<LiquorItem> {
  @override
  Widget build(BuildContext context) {
    String name = widget.name;    //술 이름
    String type = widget.type;    //술 종류
    String alcoholLevel = widget.alcoholLevel;    //술 도수
    String imgPath = widget.imgPath; //이미지 경로
    String like = widget.like; //좋아요 수
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LiquorPage()),
        );
      },
    child: Container(
    child: Row(
    children: [
    Image.asset(imgPath),
    Column(children: [
    Text(name),
    Row(children: [
    Text(type),
    Text(alcoholLevel),
    Text(like),
    ],)
    ]),
    ],
    ),
    ),
    );
  }
}