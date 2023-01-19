import 'package:flutter/material.dart';
import 'package:fluttertest/views/news_favorite_page.dart';
import 'package:get/get.dart';

import 'views/news_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: MaterialColor(0xffEBECF0, <int, Color>{
            900: Color(0xffEBECF0),
            800: Color(0xffEBECF0),
            700: Color(0xffEBECF0),
            600: Color(0xffEBECF0),
            500: Color(0xffEBECF0),
            400: Color(0xffEBECF0),
            300: Color(0xffEBECF0),
            200: Color(0xffEBECF0),
            150: Color(0xffEBECF0),
            100: Color(0xffEBECF0),
            50: Color(0xffEBECF0),
          }),
        ),
        routes: <String, WidgetBuilder>{
          '/favorite': (BuildContext context) => NewsFavoritesPage(),
        },
        home: NewsListPage());
  }
}
