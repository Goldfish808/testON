import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/home_app_bar.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _deviceWidth = MediaQuery.of(context).size.width;
    final _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: HomeAppBar(appBarTitle: "News", context: context),
      body: Column(
        children: [
          buildNewsList(),
          buildNewsList(),
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
