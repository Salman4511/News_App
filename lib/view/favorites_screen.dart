import 'package:flutter/material.dart';
import 'package:news_app/controllers/news_controller.dart';
import 'package:news_app/widgets/news_card.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Consumer<NewsController>(
        builder: (context, newsController, child) {
          return newsController.favorites.isEmpty
              ? Center(child: Text('No favorites added yet.'))
              : ListView.builder(
                  itemCount: newsController.favorites.length,
                  itemBuilder: (context, index) {
                    final article = newsController.favorites[index];
                    return NewsCard(article: article);
                  },
                );
        },
      ),
    );
  }
}
