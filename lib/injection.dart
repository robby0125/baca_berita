import 'package:baca_berita/data/datasources/news_remote_data_source.dart';
import 'package:baca_berita/data/repositories/news_repository_impl.dart';
import 'package:baca_berita/domain/repositories/news_repository.dart';
import 'package:baca_berita/domain/usecases/get_all_news.dart';
import 'package:baca_berita/presentation/controllers/news_controller.dart';
import 'package:get/get.dart';

void init() {
  // data source
  Get.lazyPut<NewsRemoteDataSource>(
    () => NewsRemoteDataSourceImpl(),
  );

  // repository
  Get.lazyPut<NewsRepository>(
    () => NewsRepositoryImpl(remoteDataSource: Get.find()),
  );

  // use case
  Get.lazyPut(
    () => GetAllNews(Get.find()),
  );

  // controller
  Get.lazyPut(
    () => NewsController(getAllNews: Get.find()),
  );
}
