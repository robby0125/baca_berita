import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ArticleItemCard extends StatelessWidget {
  const ArticleItemCard({Key? key}) : super(key: key);

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
                      'Article Title',
                      style: Get.textTheme.headline6,
                    ),
                    const Spacer(),
                    Text(
                      'Author Name',
                      style: Get.textTheme.caption!.copyWith(
                        color: Colors.redAccent,
                      ),
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
              Container(
                width: 88,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
