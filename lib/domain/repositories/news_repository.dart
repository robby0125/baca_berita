import 'package:baca_berita/common/failure.dart';
import 'package:baca_berita/domain/entities/article.dart';
import 'package:dartz/dartz.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<Article>>> getAllNews();

  Future<Either<Failure, List<Article>>> searchNews(String query);
}
