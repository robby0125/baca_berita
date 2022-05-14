import 'package:baca_berita/domain/entities/article.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ArticleItemCard extends StatelessWidget {
  final Article article;

  const ArticleItemCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final double _imgSize = 88;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        shape: const BeveledRectangleBorder(),
        elevation: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title ?? 'No Title',
                      style: Get.textTheme.headline6,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Text(
                      article.author ?? 'No Author',
                      style: Get.textTheme.caption!.copyWith(
                        color: Colors.redAccent,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '15 OCT 2022',
                      style: Get.textTheme.caption!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Image.network(
                article.urlToImage ?? '',
                width: _imgSize,
                height: _imgSize,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) {
                  return Container(
                    width: _imgSize,
                    height: _imgSize,
                    color: Colors.grey[200],
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
