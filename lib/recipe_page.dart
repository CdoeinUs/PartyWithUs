import 'package:flutter/material.dart';
import 'recipe_model.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key, required this.recipe}) : super(key: key);
  final RecipeInfo recipe;

  @override
  Widget build(BuildContext context) {
    print("레시피 페이지 열림");
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                      child: Image(
                    image: AssetImage(recipe.cardImagePath),
                  )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                recipe.writerName,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                recipe.name,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                recipe.date,
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
              Text('${recipe.description}\n'),
              Text('소요시간', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('${recipe.time}\n'),
              /*텍스트 밑줄의 높이가 다름*/
              Text('재료', style: TextStyle(fontWeight: FontWeight.bold)),
              for (int i = 0; i < (recipe.ingredient.length); i++)
                Text(' •  ${recipe.ingredient[i]}',
                    style: TextStyle(decoration: TextDecoration.underline)),
              Text('\n레시피', style: TextStyle(fontWeight: FontWeight.bold)),
              for (int i = 0; i < recipe.process.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${i + 1}. ${recipe.process[i]}'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                            child: Image(
                          image: AssetImage(recipe.processImagePath[i]),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
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
        ),
      ),
    );
  }
}
