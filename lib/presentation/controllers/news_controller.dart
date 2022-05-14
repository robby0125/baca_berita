import 'dart:developer';

import 'package:baca_berita/common/request_state.dart';
import 'package:baca_berita/domain/entities/article.dart';
import 'package:baca_berita/domain/usecases/get_all_news.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  final GetAllNews getAllNews;

  NewsController({
    required this.getAllNews,
  });

  final _requestState = RequestState.success.obs;
  final _articles = RxList<Article>([]);

  RequestState get requestState => _requestState.value;
  List<Article> get articles => _articles;

  Future<void> fetchAllNews() async {
    _requestState.value = RequestState.loading;

    final _newsResult = await getAllNews.execute();
    _newsResult.fold(
      (failure) {
        log('failure');
      },
      (articles) {
        _articles.value = articles;
        _requestState.value = RequestState.success;

        log(_requestState.value.toString());
      },
    );
  }
}
