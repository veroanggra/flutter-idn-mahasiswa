import 'package:dio/dio.dart';
import 'package:portal_berita/model/article_response.dart';
import 'package:portal_berita/model/source_response.dart';

class NewsRepositories {
  static String baseUrl = 'http://newsapi.org/v2/';
  static String API_KEY = 'd7525c19bc0f4a928614e46943fb20e7';

  final Dio _dio = Dio();
  var getSourcesUrl = '$baseUrl/sources';
  var getHeadLineUrl = '$baseUrl/top-headlines';
  var getEverything = '$baseUrl/everything';

  Future<SourceResponse> getSources() async {
    var params = {'apiKey': API_KEY, 'language': 'en', 'country': 'us'};
    try {
      Response response =
          await _dio.get(getSourcesUrl, queryParameters: params);
      return SourceResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception accured : $error stacktrace : $stacktrace');
      return SourceResponse.withError('$error');
    }
  }

  Future<ArticleResponse> search(String value) async {
    var params = {'apiKey': API_KEY, 'q': value, 'sortBy': 'popularity'};
    try {
      Response response =
          await _dio.get(getEverything, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }

  Future<ArticleResponse> getTopHeadlines() async {
    var params = {'apiKey': API_KEY, 'country': 'us'};
    try {
      Response response =
          await _dio.get(getHeadLineUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }

  Future<ArticleResponse> getHotNews() async {
    var params = {'apiKey': API_KEY, 'q': 'apple', 'sortBy': 'popularity'};
    try {
      Response response =
          await _dio.get(getEverything, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }

  Future<ArticleResponse> getSourceNews(String sourceId) async {
    var params = {'apiKey': API_KEY, 'sources': 'sourceId'};
    try {
      Response response =
          await _dio.get(getEverything, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }
}
