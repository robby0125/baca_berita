import 'package:baca_berita/data/models/news_response.dart';

abstract class NewsRemoteDataSource {
  Future<List<NewsResponse>> getAllNews();

  Future<List<NewsResponse>> searchNews(String query);
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  @override
  Future<List<NewsResponse>> getAllNews() {
    // TODO: implement getAllNews
    throw UnimplementedError();
  }

  @override
  Future<List<NewsResponse>> searchNews(String query) {
    // TODO: implement searchNews
    throw UnimplementedError();
  }
}
