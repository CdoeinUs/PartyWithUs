import 'package:flutter/material.dart';
import 'model.dart';

class CocktailPage extends StatelessWidget {
  const CocktailPage({Key? key, required this.cocktail}) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cocktail.name),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(cocktail.imgPath),
            Text(cocktail.base),
            Text(cocktail.detail),
          ]
        ),
      ),
    );
  }
}
