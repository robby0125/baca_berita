import 'package:baca_berita/common/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(const BacaBerita());

class BacaBerita extends StatelessWidget {
  const BacaBerita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BacaBerita',
      getPages: Routes.getPages,
    );
  }
}
