import 'package:baca_berita/common/request_state.dart';
import 'package:baca_berita/presentation/controllers/news_controller.dart';
import 'package:baca_berita/presentation/widgets/news_item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final NewsController _newsController;

  @override
  void initState() {
    super.initState();
    _newsController = Get.find();
    _newsController.fetchAllNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BacaBerita'),
      ),
      body: Obx(() {
        if (_newsController.requestState == RequestState.success) {
          final _articles = _newsController.articles;

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            clipBehavior: Clip.none,
            itemCount: _articles.length,
            itemBuilder: (_, index) {
              return ArticleItemCard(
                article: _articles[index],
              );
            },
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
