import 'package:flutter/material.dart';
import 'package:fluttertest/dto_model/articles_model.dart';
import 'package:fluttertest/views/components/home_app_bar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controller/controller.dart';

class NewsDetailPage extends StatelessWidget {
  NewsDetailPage({Key? key, required this.article}) : super(key: key);
  final favoriteController = Get.put(CountController());

  final ArticlesModel article;
  @override
  Widget build(BuildContext context) {
    DateTime at = DateTime.parse(article.publishedAt.toString());
    return Scaffold(
      appBar: HomeAppBar(context: context, appBarTitle: "Details", article: article),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${article.title}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${DateFormat('yyyy.MM.dd').format(at)}",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(article.author == null ? "작성자 알 수 없음" : "${article.author}"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  article.urlToImage.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("${article.description}")
          ],
        ),
      ),
    );
  }
}
