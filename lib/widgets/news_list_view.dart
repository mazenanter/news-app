import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/news_tile.dart';


// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});
  List<ArticleModel> articles;


  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTileWidget(
            model: articles[index],
          ),
        ),
      ),
    );
  }
}
