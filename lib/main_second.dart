import 'package:flutter/material.dart';
import 'program_model.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ElevatedButton(
            child: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Text("DECEMBER'S",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          const Text("PROGRAM",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          const SizedBox(height: 20),
          Programs(),
          const SizedBox(
            height: 20,
          ),
          const Text("BARTENDER INTERVIEW",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          Bartender_Interview(),
        ]),
      ),
    );
  }
}

class Programs extends StatefulWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  static List<String> programTitle = [
    '크리스마스엔 따뜻한 뱅쇼 한 잔 어때요?',
    '지친 여행자를 위한 위로의 레시피',
  ];
  static List<String> imagePath = [
    'image/program1.png',
    'image/program2.png',
  ];
  static List<String> programDetail = [
    '준성과 함께 쉽고 간단한 레시피를 배워봐요 :)',
    '호찬과 함께 쉽고 간단한 레시피를 배워봐요 :)',
  ];

  final List<Program> programData = List.generate(
      programTitle.length,
      (index) =>
          Program(programTitle[index], programDetail[index], imagePath[index]));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("클릭 됨");
      },
      child: Container(
        alignment: Alignment.center,
        height: 380,
        width: 450,
        child: GridView.builder(
            itemCount: programTitle.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 2, //item 의 가로 1, 세로 2 의 비율
              mainAxisSpacing: 10, //수평 Padding
              crossAxisSpacing: 10, //수직 Padding
            ),
            itemBuilder: (context, index) {
              return Card(
                child: Column(children: [
                  Image.asset(programData[index].imagePath),
                  Text(
                    programData[index].title,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(programData[index].detail),
                ]),
              );
            }),
      ),
    );
  }
}

class Bartender_Interview extends StatefulWidget {
  const Bartender_Interview({Key? key}) : super(key: key);

  @override
  State<Bartender_Interview> createState() => _Bartender_InterviewState();
}

class _Bartender_InterviewState extends State<Bartender_Interview> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("인터뷰 클릭이요");
      },
      child: Container(
        height: 300,
        width: 400,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/cocktail2.png"), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const[
            Text("임준성/MNED", style: TextStyle(color: Colors.white, fontSize: 15)),
            Text("눈을 맞춰 술잔을 채워",
                style: TextStyle(color: Colors.white  , fontSize: 20,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
