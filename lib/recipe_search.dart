import 'package:flutter/material.dart';
import 'liquor_search.dart';
import 'recipe_model.dart';
import 'recipe_page.dart';
import 'story.dart';

const routeRecipeSearched = "/";
const routeRecipePage = "/RecipePage";
final _recipeNavigatorKey = GlobalKey<NavigatorState>();

MaterialPageRoute _onGenerateRoute(RouteSettings setting) {
  if (setting.name == routeRecipeSearched) {
    return MaterialPageRoute<dynamic>(
        builder: (context) => const Recipe_searched(), settings: setting);
  } else {
    throw Exception('Unknown route: ${setting.name}');
  }
}

//검색창과 탭바
class RecipeSearch extends StatefulWidget {
  const RecipeSearch({Key? key}) : super(key: key);

  @override
  State<RecipeSearch> createState() => _RecipeSearchState();
}

class _RecipeSearchState extends State<RecipeSearch> {
  //검색창에 입력된 문자열
  var _searchRecipe = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                //검색창과 취소버튼
                children: <Widget>[
                  Expanded(
                      child: TextField(
                    decoration: const InputDecoration(labelText: '검색'),
                    onChanged: (value) {
                      setState(() {
                        _searchRecipe = value;
                      });
                    },
                  )),
                  const SizedBox(
                    width: 10.0,
                  ),
                  TextButton(
                      onPressed: _searchRecipe.trim().isEmpty ? null : () {},
                      child: const Text('취소'))
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
                        tabs: const [
                          Tab(text: '술'),
                          Tab(text: '레시피'),
                          Tab(text: '이야기'),
                        ],
                      ),
                      Expanded(
                          child: TabBarView(
                        children: [
                          const liquorSearch(),
                          WillPopScope(
                            //뒤로가기 버튼을 눌러도 이전화면으로 돌아가지 않고 레시피 페이지만 꺼짐
                            onWillPop: () async {
                              print('pop');
                              if (_recipeNavigatorKey.currentState?.canPop() ??
                                  false) {
                                _recipeNavigatorKey.currentState?.pop();
                              } else {
                                Navigator.pop(context);
                              }
                              return false;
                            },
                            child: Navigator(
                              key: _recipeNavigatorKey,
                              initialRoute: routeRecipeSearched,
                              onGenerateRoute: _onGenerateRoute,
                            ),
                          ),
                          const story(),
                        ],
                      ))
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

/// 검색된 레시피들을 보여주는 Container return
class Recipe_searched extends StatefulWidget {
  const Recipe_searched({Key? key}) : super(key: key);

  @override
  State<Recipe_searched> createState() => _Recipe_searchedState();
}

class _Recipe_searchedState extends State<Recipe_searched> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Divider(
            color: Colors.grey,
            height: 10,
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
                    const PopupMenuItem(
                      value: 'fast_speed',
                      child: Text('빠름'),
                    ),
                    const PopupMenuItem(
                      value: 'medium_speed',
                      child: Text('중간'),
                    ),
                    const PopupMenuItem(
                      value: 'slow_speed',
                      child: Text('오래걸림'),
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200]),
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
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
                    const PopupMenuItem(
                      value: 'easy',
                      child: Text('쉬움'),
                    ),
                    const PopupMenuItem(
                      value: 'medium',
                      child: Text('보통'),
                    ),
                    const PopupMenuItem(
                      value: 'hard',
                      child: Text('어려움'),
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200]),
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
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
                    const PopupMenuItem(
                      value: 'sweet',
                      child: Text('단맛'),
                    ),
                    const PopupMenuItem(
                      value: 'salty',
                      child: Text('짠맛'),
                    ),
                    const PopupMenuItem(
                      value: 'tasty',
                      child: Text('감칠맛'),
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200]),
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
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
            children: const [
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
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
          //IBA 레시피 카드 GridView
          SizedBox(
            height: 250,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2 / 1),
                itemCount: testRecipes(context).length,
                itemBuilder: (BuildContext context, int index) {
                  return Flexible(
                    child: RecipeItem(
                      recipe: testRecipes(context)[index],
                    ),
                  );
                }),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '더보기 >',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
          ),
          Container(
            height: 10,
            color: Colors.grey[100],
          ),
          Row(
            children: const [
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
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
          //시그니처 레시피 카드 GridView
          SizedBox(
            height: 250,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2 / 1),
                itemCount: testRecipes(context).length,
                itemBuilder: (BuildContext context, int index) {
                  return Flexible(
                    child: RecipeItem(
                      recipe: testRecipes(context)[index],
                    ),
                  );
                }),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '더보기 >',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

//카드가 들어있는 SafeArea를 return

class RecipeItem extends StatelessWidget {
  const RecipeItem({Key? key, required this.recipe, this.shape})
      : super(key: key);

  // This height will allow for all the Card's content to fit comfortably within the card.
  static const height = 200.0;
  final RecipeInfo recipe;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: SizedBox(
        height: height,
        child: Card(
          // This ensures that the Card's children (including the ink splash) are clipped correctly.
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            onTap: () {
              //검색창, 탭바를 제외한 화면에 push
              _recipeNavigatorKey.currentState?.push(MaterialPageRoute(
                  builder: (context) => RecipePage(recipe: recipe)));
            },
            // Generally, material cards use onSurface with 12% opacity for the pressed state.
            splashColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
            // Generally, material cards do not have a highlight overlay.
            highlightColor: Colors.transparent,
            child: Semantics(
              child: RecipeContent(recipe: recipe),
            ),
          ),
        ),
      ),
    );
  }
}

// 각 레시피 카드의 내용을 return
class RecipeContent extends StatelessWidget {
  const RecipeContent({Key? key, required this.recipe}) : super(key: key);

  final RecipeInfo recipe;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.titleSmall!;
    final descriptionStyle = theme.textTheme.bodySmall!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 190,
          child: Stack(
            children: [
              Positioned.fill(
                child: Ink.image(
                  image: AssetImage(
                    recipe.cardImagePath,
                  ),
                  fit: BoxFit.cover,
                  child: Container(),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.bottomRight,
                  child: Semantics(
                    container: true,
                    header: true,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                      color: Colors.grey[600],
                      iconSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Semantics(
          container: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: DefaultTextStyle(
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: descriptionStyle,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: titleStyle,
                  ),
                  Text(
                    "${recipe.percentage}% | ${recipe.favorite}",
                    style: descriptionStyle.copyWith(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
