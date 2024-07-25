import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService
{
  static final dio = Dio();
 static Future<List<ArticleModel>> fetchData({required String category})async
  {
    try
    {
      Response response =await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=70aed07878174ea8b902b02f93b470a6');
      Map<String ,dynamic>fromJson=response.data;

      List<dynamic>articles = fromJson['articles'];
      List<ArticleModel>articleList= [];

      for(var element in articles)
      {
        ArticleModel articleModel = ArticleModel.fromJson(element);
        articleList.add(articleModel);
      }
      return articleList;
    }catch (e)
    {
      return [];
    }
  }
}