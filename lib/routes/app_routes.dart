import 'package:get/get.dart';
import 'package:portfolio/features/home_page/screen/home_screen.dart';


class AppRoute {
  static String homeScreen = "/homeScreen";

  static String getHomeScreen() => homeScreen;

  static List<GetPage> routes = [
    GetPage(name: homeScreen, page: () =>  HomeScreen()),
  ];
}
