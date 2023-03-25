import 'package:flutter/material.dart';
import 'recipe.dart';


class RecipeSearch extends StatefulWidget {
  const RecipeSearch({Key? key}) : super(key: key);

  @override
  State<RecipeSearch> createState() => _RecipeSearchState();
}

class _RecipeSearchState extends State<RecipeSearch> {
  var _searchRecipe = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              //검색창과 취소버튼
              children: <Widget>[
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(labelText: '검색'),
                  onChanged: (value) {
                    setState(() {
                      _searchRecipe = value;
                    });
                  },
                )),
                SizedBox(
                  width: 10.0,
                ),
                TextButton(
                    onPressed: _searchRecipe.trim().isEmpty ? null : () {},
                    child: Text('취소'))
              ],
            ),
            Expanded(
                child: Align(
              alignment: Alignment.centerLeft,
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: Theme.of(context).primaryColor,
                      tabs: [
                        Tab(
                          text: '술',
                        ),
                        Tab(
                          text: '레시피',
                        ),
                        Tab(
                          text: '이야기',
                        ),
                      ],
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        Recipe(),
                        Container(
                          child: Column(
                            children: [
                              const Divider(
                                color: Colors.grey,
                                height: 20,
                                thickness: 1,
                                indent: 0,
                                endIndent: 8,
                              ),
                              Row(
                                  //시간, 난이도, 맛 필터선택
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    PopupMenuButton<String>(
                                      itemBuilder: (BuildContext context) => [
                                        PopupMenuItem(
                                          child: Text('빠름'),
                                          value: 'fast_speed',
                                        ),
                                        PopupMenuItem(
                                          child: Text('중간'),
                                          value: 'medium_speed',
                                        ),
                                        PopupMenuItem(
                                          child: Text('오래걸림'),
                                          value: 'slow_speed',
                                        )
                                      ],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Colors.grey[200]),
                                        padding: EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '시간',
                                              style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(Icons.arrow_drop_down),
                                          ],
                                        ),
                                      ),
                                      onSelected: (String value) {
                                        print('Selected: $value');
                                      },
                                    ),
                                    PopupMenuButton<String>(
                                      itemBuilder: (BuildContext context) => [
                                        PopupMenuItem(
                                          child: Text('쉬움'),
                                          value: 'easy',
                                        ),
                                        PopupMenuItem(
                                          child: Text('보통'),
                                          value: 'medium',
                                        ),
                                        PopupMenuItem(
                                          child: Text('어려움'),
                                          value: 'hard',
                                        )
                                      ],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Colors.grey[200]),
                                        padding: EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '난이도',
                                              style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(Icons.arrow_drop_down),
                                          ],
                                        ),
                                      ),
                                      onSelected: (String value) {
                                        print('Selected: $value');
                                      },
                                    ),
                                    PopupMenuButton<String>(
                                      itemBuilder: (BuildContext context) => [
                                        PopupMenuItem(
                                          child: Text('단맛'),
                                          value: 'sweet',
                                        ),
                                        PopupMenuItem(
                                          child: Text('짠맛'),
                                          value: 'salty',
                                        ),
                                        PopupMenuItem(
                                          child: Text('감칠맛'),
                                          value: 'tasty',
                                        )
                                      ],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Colors.grey[200]),
                                        padding: EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '맛',
                                              style: TextStyle(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(Icons.arrow_drop_down),
                                          ],
                                        ),
                                      ),
                                      onSelected: (String value) {
                                        print('Selected: $value');
                                      },
                                    )
                                  ]),
                              const Divider(
                                color: Colors.grey,
                                height: 20,
                                thickness: 1,
                                indent: 0,
                                endIndent: 8,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'IBA 레시피',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '게시글 갯수',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: GridView.builder(
                                      scrollDirection: Axis.horizontal,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 1,
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 10,
                                              childAspectRatio: 2 / 1),
                                      itemCount: 3,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          // 카드로 바꾸면 좋을듯?
                                          color: Colors.grey[200],
                                          child: Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 200,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/tequila_sunrise.webp'))),
                                              ),
                                              Text('데킬라 선라이즈'),
                                              Text(
                                                '30% | 296',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          )),
                                        );
                                      })),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '더보기 >',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                                color: Colors.grey[100],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '시그니처 레시피',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '게시글 갯수',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: GridView.builder(
                                      scrollDirection: Axis.horizontal,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 1,
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 10,
                                              childAspectRatio: 2 / 1),
                                      itemCount: 4,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          color: Colors.grey[200],
                                          child: Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 200,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/tequila_sunrise.webp'))),
                                              ),
                                              Text('데킬라 선라이즈'),
                                              Text(
                                                '30% | 296',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          )),
                                        );
                                      })),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '더보기 >',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '이야기 페이지',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
