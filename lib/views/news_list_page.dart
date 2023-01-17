import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/repository/articles_repository.dart';

import 'package:get/get.dart';

import '../controller/controller.dart';
import 'components/home_app_bar.dart';

class NewsListPage extends StatefulWidget {
  NewsListPage({Key? key}) : super(key: key);

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  final controller = Get.put(CountController());
  ArticlesRepository? articles;
  @override
  void initState() {
    super.initState();
    Dio dio = Dio();

    articles = ArticlesRepository(dio);

    Future.microtask(() async {
      print("===========");
      print("여기 까지 오냐");
      print("===========");
      final resp = await articles?.getNews();

      print("씨발 왜 $resp");
    });
  }

  @override
  Widget build(BuildContext context) {
    final _deviceWidth = MediaQuery.of(context).size.width;
    final _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: HomeAppBar(appBarTitle: "News", context: context),
      body: Column(
        children: [
          buildNewsList(),
          GetX<CountController>(
              builder: (_) => Text(
                    'clicks: ${controller.count}',
                  )),
          ElevatedButton(
            child: Text('Next Route'),
            onPressed: () {
              controller.increment();
            },
          ),
        ],
      ),
    );
  }

  Widget buildNewsList() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 30, top: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.amber),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("기사 제목"),
                      Text("기사 내용"),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network('https://picsum.photos/250?image=9', fit: BoxFit.fill)),
                    ),
                    Positioned(
                      top: 120,
                      left: 120,
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Colors.lightBlue,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Divider(thickness: 2.0),
        ],
      ),
    );
  }
}
