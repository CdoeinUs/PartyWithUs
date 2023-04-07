import 'package:flutter/material.dart';
import 'package:partywithus/recipe_search.dart';
import 'feed.dart';
import 'main_second.dart';
import 'model.dart';
import 'cocktail_Detail.dart';
import 'mypage.dart';

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
        primarySwatch: Colors.blueGrey,
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

  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(index);
    }));
  }

  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    _getPage(_currentIndex);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height) * 0.4,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text("OUNCE\n",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  SizedBox.fromSize(
                    size: Size.fromHeight(
                        (MediaQuery.of(context).size.height) * 0.05),
                  ),
                  const Text("퇴근 후\n완벽한 밤을 위한\nSEONGSU JAZZ BAR",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  SizedBox.fromSize(
                    size: Size.fromHeight(
                        (MediaQuery.of(context).size.height) * 0.03),
                  ),
                  const Text("200여종의 칵테일을 경험해 보세요",
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                ],
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "당신에게 딱\n맞춰진 칵테일을 찾아보세요!",
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
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height) * (0.3),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cocktailData.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      width: 200,
                      height: 200,
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(cocktailImagePath[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CocktailPage(
                                      cocktail: cocktailData[index])));
                            },
                          ),
                        ),
                      ));
                }),
          ),
          Visibility(
            visible: !_isVisible,
            child: ElevatedButton(
              onPressed: _toggleVisibility,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200], // 버튼 색상
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // 버튼 모서리 둥글기
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0), // 버튼 패딩
              ),
              child: const Text(
                "더 보고 싶어요",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
              if (_isVisible)
                const SecondPage(),
        ])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black, // 탭 항목 목록
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'main',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'my account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'map',
          ),
        ],
        currentIndex: _currentIndex, // 현재 선택된 탭 인덱스
        onTap: _onTabTapped, // 탭 선택 이벤트 핸들러
      ),
    );
  }
}

Widget _getPage(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return const Feed();
    case 1:
      return const RecipeSearch();
    case 2:
      return const Cocktails();
    case 3:
      return const myHome();
    case 4:
      return const SecondPage();
    //지도 페이지로 바껴야함
    default:
      return const Cocktails();
  }
}
