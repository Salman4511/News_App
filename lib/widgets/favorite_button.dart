import 'package:flutter/material.dart';
import 'package:news_app/controllers/news_controller.dart';
import 'package:news_app/models/article_model.dart';
import 'package:provider/provider.dart';

class FavoriteButton extends StatelessWidget {
  final Article article;

  const FavoriteButton({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Provider.of<NewsController>(context).favorites.contains(article)
            ? Icons.favorite
            : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        Provider.of<NewsController>(context, listen: false)
            .toggleFavorite(article);
      },
    );
  }
}
