import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/api_service.dart';

class NewsController with ChangeNotifier {
  List<Article> _articles = [];
  final List<Article> _favorites = [];

  List<Article> get articles => _articles;
  List<Article> get favorites => _favorites;

  Future<void> fetchArticles() async {
    _articles = await ApiService().fetchArticles();
    notifyListeners();
  }

  void toggleFavorite(Article article) {
    if (_favorites.contains(article)) {
      _favorites.remove(article);
    } else {
      _favorites.add(article);
    }
    notifyListeners();
  }
}
