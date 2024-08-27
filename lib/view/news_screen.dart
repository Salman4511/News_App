import 'package:flutter/material.dart';
import 'package:news_app/controllers/news_controller.dart';
import 'package:news_app/widgets/app_bar.dart';
import 'package:news_app/widgets/news_card.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: FutureBuilder(
        future:
            Provider.of<NewsController>(context, listen: false).fetchArticles(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Consumer<NewsController>(
              builder: (context, newsController, child) {
                return ListView.builder(
                  itemCount: newsController.articles.length,
                  itemBuilder: (context, index) {
                    final article = newsController.articles[index];
                    return NewsCard(article: article);
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
