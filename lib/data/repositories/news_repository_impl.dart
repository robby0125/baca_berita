import 'dart:io';

import 'package:baca_berita/common/exception.dart';
import 'package:baca_berita/common/failure.dart';
import 'package:baca_berita/data/datasources/news_remote_data_source.dart';
import 'package:baca_berita/domain/entities/article.dart';
import 'package:baca_berita/domain/repositories/news_repository.dart';
import 'package:dartz/dartz.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;

  NewsRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<Article>>> getAllNews() async {
    try {
      final _result = await remoteDataSource.getAllNews();
      return Right(_result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return Left(ServerFailure(''));
    } on SocketException {
      return Left(ConnectionFailure(''));
    }
  }

  @override
  Future<Either<Failure, List<Article>>> searchNews(String query) {
    // TODO: implement searchNews
    throw UnimplementedError();
  }
}
