import 'package:baca_berita/presentation/widgets/news_item_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BacaBerita'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        clipBehavior: Clip.none,
        itemCount: 10,
        itemBuilder: (_, __) {
          return const ArticleItemCard();
        },
      ),
    );
  }
}
