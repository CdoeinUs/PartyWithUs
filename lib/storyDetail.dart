import 'package:flutter/material.dart';

class StorysDetail extends StatefulWidget {
  const StorysDetail({Key? key}) : super(key: key);

  @override
  State<StorysDetail> createState() => _StorysDetailState();
}

class _StorysDetailState extends State<StorysDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
       children: [
         Text("회기"),
         Text("PWU 12월 크리스마스 모임"),
         Text("2023-03-25"),
         Image.asset("image/program1.png"),
         Text("여기부분은 유저가 작성해야하는 부분인가?",style: TextStyle(
           fontSize: 80
         ),)
       ],
      )
    );
  }
}
