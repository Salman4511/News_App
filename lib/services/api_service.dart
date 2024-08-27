import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/article_model.dart';

class ApiService {
  final String _apiKey = 'b1e4f06288db461cb2b96e6cc7b40ebe';

  Future<List<Article>> fetchArticles() async {
    final response = await http.get(
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=in&apiKey=$_apiKey'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body)['articles'];
      return json.map((article) => Article.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
