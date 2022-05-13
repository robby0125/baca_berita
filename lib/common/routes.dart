import 'package:baca_berita/presentation/pages/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class Routes {
  static const String home = '/';

  static final List<GetPage> getPages = [
    GetPage(name: home, page: () => const HomePage()),
  ];
}
