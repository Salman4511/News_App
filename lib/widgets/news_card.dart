import 'package:flutter/material.dart';
import 'package:news_app/controllers/news_controller.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/view/article_detail_screen.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (BuildContext context) {
                  Provider.of<NewsController>(context, listen: false)
                      .toggleFavorite(article);
                },
                backgroundColor: Colors.red.shade200,
                foregroundColor: Colors.red,
                icon: Icons.favorite,
                label: 'Add to Favorite',
              ),
            ],
          ),
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 110,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                              article.urlToImage ??
                                  'https://www.thoughtco.com/thmb/FCh51K3mA2qZ1cbBfLKt-uP1LtA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/177793647-58b985343df78c353cdf2532.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.author!,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(
                        article.title,
                        style: TextStyle(color: Colors.grey[600]),
                        maxLines: null,
                        softWrap: true,
                      ),
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
