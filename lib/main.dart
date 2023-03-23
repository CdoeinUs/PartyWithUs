import 'package:flutter/material.dart';
import 'main_second.dart';
import 'model.dart';
import 'cocktail_Detail.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Cocktails(),
    );
  }
}


class Cocktails extends StatefulWidget {
  const Cocktails({Key? key}) : super(key: key);

  @override
  State<Cocktails> createState() => _CocktailsState();
}

class _CocktailsState extends State<Cocktails> {
  static List<String> cocktailName = [
    '뱅쇼',
    '하이볼',
    '블루라군',
    '동해'
  ];
  static List<String> cocktailImagePath = [
    'image/cocktail1.png',
    'image/cocktail2.png',
    'image/cocktail3.png',
    'image/cocktail4.png',
  ];
  static List<String> cocktailDetail = [
    '뱅쇼(vin chaud)는 프랑스어로 "따뜻한 와인"이란 뜻으로, 와인에 여러 과일과 계피를 비롯한 향신료를 넣고 끓여 만든 음료수를 말한다.',
    '칵테일 제조법의 일종. 기본은 얼음을 채운 텀블러 글라스에 증류주를 일정량 넣고 그 위에 탄산수, 진저에일 등의 탄산음료를 부어 만든다. 증류주로는 위스키가 제일 흔히 쓰인다. 여기에 레몬 혹은 라임 등을 필하여 상큼한 맛을 더하는 것도 가능하다.',
    '보드카 베이스 칵테일로, 이름의 뜻은 푸른 산호초. 그래서인지 칵테일 색도 마찬가지로 푸른색이다. 두 가지 버전이 있는데, 하나는 구프 글라스에 따르는 숏 드링크, 하나는 하이볼 글라스 또는 콜린스 글라스에 따르는 롱 드링크다. 때문에 바에서 블루 라군을 주문할 때는 꼭 정확한 표현을 사용해서 주문해야 된다.',
    ' 칵테일 동해를 비롯한 시중에서 잘 나가는 종류의 칵테일들은 공통점이라면 특유의 개성적인 맛이 있다기보단 색상적인 화려함과 이미지, 그리고 누가 마셔도 맛있게 느낄만한 달콤함과 새콤함 등 무난한 맛이 특징이라 할 수 있습니다. 그렇기에 거의 공통적으로 쓰이는 재료를 들자면 복숭아 리큐르인 피치 시냅스, 즉 피치 트리, 코코넛 럼인 말리부 또는 그와 유사한 상품, 푸른색을 내는 대표적인 재료인 블루 큐라소, 마지막으로 스위트&사워 믹스(Sweet&Sour Mix) 줄여서 사워 믹스라 부르는 것들이 있습니다.'
  ];
  static List<String> cocktailBase = [
    '와인',
    '진',
    '럼',
    '보드카'
  ];

  final List<Cocktail> cocktailData = List.generate(
      cocktailName.length, (index) =>
      Cocktail(
          cocktailName[index], cocktailImagePath[index], cocktailDetail[index],
          cocktailBase[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(
            child: Column(children: [
              Container(
                  padding: const EdgeInsets.all(20),
                  width: 400,
                  height: 400,
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 10), // 10 픽셀의 간격
                      Text("OUNCE",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      SizedBox(height: 150), // 10 픽셀의 간격
                      Text("퇴근 후",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      Text("완벽한 밤을 위한",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      Text("SEONGSU JAZZ BAR",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      SizedBox(height: 20), // 10 픽셀의 간격
                      Text("200여종의 칵테일을 경험해 보세요",
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  )),

              Container(
                padding: const EdgeInsets.all(20),
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 10), // 10 픽셀의 간격
                    Text("당신에게 딱",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "맞춰진 칵테일을 찾아보세요!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                alignment: Alignment.center,
                height: 300,
                width: 400,
                child: ListView.builder(
                    itemCount: cocktailData.length,
                    itemBuilder: (context, index) {
                      return Card(

                        child: ListTile(
                          title: Text(cocktailData[index].name),
                          leading: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(cocktailData[index].imgPath),),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CocktailPage(cocktail:cocktailData[index])));
                          },
                        ),
                      );
                    }),
              ),

              Container(
                  child: ElevatedButton(
                      child: const Text("더 보고 싶어요"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context2) => SecondPage()));
                      })),
            ]
            )
        )
    );
  }
}
