
import 'package:dio/dio.dart';
import '../Model/Service_model.dart';

class NewsService {
  final dio = Dio();
  Future<List<ServiceModel>> getNews({required String Catagory }) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=31d75cc2967b4309be70b9754b5d6730&category=$Catagory');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ServiceModel> articleList = [];

    for (var article in articles) {
      ServiceModel server = ServiceModel(
          imgUri: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);

      articleList.add(server);
    }
    return articleList;
  }
}