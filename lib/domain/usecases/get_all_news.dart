import 'package:baca_berita/common/failure.dart';
import 'package:baca_berita/domain/entities/article.dart';
import 'package:baca_berita/domain/repositories/news_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllNews {
  final NewsRepository _repository;

  GetAllNews(this._repository);

  Future<Either<Failure, List<Article>>> execute() {
    return _repository.getAllNews();
  }
}
