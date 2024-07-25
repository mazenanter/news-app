import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/category_detailes_view.dart';
import 'package:news/widgets/navigate_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key,required this.model});
final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: ()
          {
            navigateTo(context,CategoryDetailesView(
              category: model.categoryName,
            ), );
          },
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  model.image,

                ),
              ),
              Text(
                model.categoryName,
                style: const TextStyle(color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
