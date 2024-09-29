import 'package:get/get.dart';
import 'package:starter/screens/home.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => const MyHomePage(),
  ),
];
