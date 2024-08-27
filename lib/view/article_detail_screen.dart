import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/widgets/favorite_button.dart';

class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  const ArticleDetailScreen({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          article.urlToImage ??
                              'https://www.thoughtco.com/thmb/FCh51K3mA2qZ1cbBfLKt-uP1LtA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/177793647-58b985343df78c353cdf2532.jpg',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: FavoriteButton(article: article),
                  ),
                ],
              ),
              kheight10,
              Text(
                article.author ?? 'Unknown Author',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              kheight10,
              Row(
                children: [
                  const Icon(Icons.calendar_month),
                  kheight10,
                  Text(
                    article.publishedAt.toString(),
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              kheight10,
              Text(
                article.title,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
