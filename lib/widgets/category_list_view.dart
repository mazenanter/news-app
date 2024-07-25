import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_widget.dart';
// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  List<CategoryModel>categories=
  [
    CategoryModel(
      image: 'assets/free-online-black-business-logo-maker.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/EA_Sports_FC_flag.jpeg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/E!_News_current_logo.png',
      categoryName: 'General',
    ),
  ];

  CategoryListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryWidget(model: categories[index]),
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
