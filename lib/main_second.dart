import 'package:flutter/material.dart';
import 'program_model.dart';
import 'recipe_search.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}
//2번째 메인페이지
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("DECEMBER'S\nPROGRAM",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          SizedBox.fromSize(
            size: Size.fromHeight((MediaQuery.of(context).size.height) * 0.03),
          ),
          const Programs(),
          SizedBox.fromSize(
            size: Size.fromHeight((MediaQuery.of(context).size.height) * 0.03),
          ),
          const Text("BARTENDER INTERVIEW",
              style: TextStyle(color: Colors.black, fontSize: 30)),
          const BartenderInterview(),
        ]),
      );
  }
}

//프로그램 위젯 생성
class Programs extends StatefulWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context2) => const RecipeSearch()));
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.height) * 0.35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: programTitle.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 300,
                width: 200,
                child: Card(
                  child: Column(children: [
                    Image.asset(programData[index].imagePath),
                    Text(
                      programData[index].title,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(programData[index].detail),
                  ]),
                ),
              );
            }),
      ),
    );
  }
}

class BartenderInterview extends StatefulWidget {
  const BartenderInterview({Key? key}) : super(key: key);

  @override
  State<BartenderInterview> createState() => _BartenderInterviewState();
}

class _BartenderInterviewState extends State<BartenderInterview> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => const RecipeSearch()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.height) * 0.35,
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
