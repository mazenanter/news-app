import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_builder.dart';

class CategoryDetailesView extends StatelessWidget {
  const CategoryDetailesView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers:
        [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
