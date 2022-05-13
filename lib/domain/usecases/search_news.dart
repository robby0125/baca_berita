import 'package:baca_berita/common/failure.dart';
import 'package:baca_berita/domain/entities/article.dart';
import 'package:baca_berita/domain/repositories/news_repository.dart';
import 'package:dartz/dartz.dart';

class SearchNews {
  final NewsRepository _repository;

  SearchNews(this._repository);

  Future<Either<Failure, List<Article>>> execute(String query) {
    return _repository.searchNews(query);
  }
}
