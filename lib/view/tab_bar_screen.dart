import 'package:flutter/material.dart';
import 'package:news_app/view/news_screen.dart';
import 'package:news_app/view/favorites_screen.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.article,
                      size: 35,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'News',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 35,
                      color: Colors.red,
                    ),
                    SizedBox(width: 8),
                    Text('Favs', style: TextStyle(fontSize: 30)),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NewsScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
