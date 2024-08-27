import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/view/article_detail_screen.dart';

class NewsCard extends StatelessWidget {
  final Article article;

  const NewsCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailScreen(article: article),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(article.urlToImage??'https://i.insider.com/5baa98480119b2157a2c138a?width=800&format=jpeg&auto=webp'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                article.author!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                article.title,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
