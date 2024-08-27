import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/favorite_button.dart';

class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  const ArticleDetailScreen({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Detail'),
        actions: [
          FavoriteButton(article: article),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (article.urlToImage != null)
              Image.network(article.urlToImage!)
            else
              Container(
                height: 200,
                color: Colors.grey,
                child: const Center(
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                article.author!,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                article.title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
