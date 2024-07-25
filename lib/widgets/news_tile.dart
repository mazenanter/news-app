import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/views/web_view.dart';
import 'package:news/widgets/navigate_widget.dart';

// ignore: must_be_immutable
class NewsTileWidget extends StatelessWidget {
   NewsTileWidget({super.key,required this.model});
  ArticleModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ()
          {
            navigateTo(context, WebViewScreen(url: model.url),);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              model.image??'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          model.title,
          maxLines: 2,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '${model.subTitle}',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
