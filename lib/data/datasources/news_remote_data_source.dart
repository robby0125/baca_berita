import 'dart:convert';

import 'package:baca_berita/common/exception.dart';
import 'package:baca_berita/data/models/article_model.dart';
import 'package:baca_berita/data/models/news_response.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class NewsRemoteDataSource {
  Future<List<ArticleModel>> getAllNews();

  Future<List<ArticleModel>> searchNews(String query);
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  late final Dio dio;

  NewsRemoteDataSourceImpl() {
    dio = Dio();
    dio.options.baseUrl = 'https://newsapi.org/v2';
    dio.options.queryParameters = {
      'apiKey': 'cb4fb0a7308e4960835fd666d5a52774',
      'country': 'us',
    };
    dio.options.connectTimeout = 10000; // 10s
    dio.options.receiveTimeout = 10000; // 10s
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  @override
  Future<List<ArticleModel>> getAllNews() async {
    final Response<String> _response = await dio.get('/top-headlines');

    if (_response.statusCode == 200) {
      return NewsResponse.fromJson(jsonDecode(_response.data!)).articles;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ArticleModel>> searchNews(String query) {
    // TODO: implement searchNews
    throw UnimplementedError();
  }
}
