import 'package:baca_berita/common/failure.dart';
import 'package:baca_berita/domain/entities/article.dart';
import 'package:baca_berita/domain/repositories/news_repository.dart';
import 'package:dartz/dartz.dart';

class NewsRepositoryImpl implements NewsRepository {
  @override
  Future<Either<Failure, List<Article>>> getAllNews() {
    // TODO: implement getAllNews
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Article>>> searchNews(String query) {
    // TODO: implement searchNews
    throw UnimplementedError();
  }
}
