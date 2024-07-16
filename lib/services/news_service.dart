import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticlModel>> getnews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=91e76461637c4a7b9655d71b9a9051bd&country=us&category=$category");
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticlModel> articleslist = [];
      for (var article in articles) {
        ArticlModel articlModel = ArticlModel.fromjson(article);
        articleslist.add(articlModel);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
  }
}
