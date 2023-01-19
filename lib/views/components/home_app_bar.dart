import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';
import '../../dto_model/articles_model.dart';
import '../news_favorite_page.dart';

class HomeAppBar extends AppBar implements PreferredSizeWidget {
  HomeAppBar({super.key, required this.context, this.appBarTitle, this.favoritesList, this.article});
  final BuildContext context;
  final favoriteController = Get.put(CountController());
  final ArticlesModel? article;
  final String? appBarTitle;
  List<ArticlesModel>? favoritesList;

  @override
  // TODO: implement automaticallyImplyLeading
  bool get automaticallyImplyLeading => true;
  @override
  // TODO: implement leading
  Widget? get leading => InkWell(
        onTap: () {
          Get.back();
        },
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.lightBlue,
            ),
            Text(
              (appBarTitle.toString() == "Details") || (appBarTitle.toString() == "Favorites") ? "News" : "",
              style: TextStyle(fontSize: 18, color: Colors.lightBlue),
            )
          ],
        ),
      );

  @override
  // TODO: implement leadingWidth
  double? get leadingWidth => 100;

  @override
  bool? get centerTitle => true;

  @override
  Widget? get title => Text(appBarTitle.toString());

  @override
  List<Widget>? get actions => [
        appBarTitle.toString() == "Favorites"
            ? Row(
                children: [
                  InkWell(
                    child: Text(
                      "Delete All",
                      style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text('Delete Everything'),
                          content: Text('Are you sure you want to delete everything?'),
                          actions: [
                            CupertinoDialogAction(
                              child: Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop('CANCEL');
                              },
                            ),
                            CupertinoDialogAction(
                              child: Text('Confirm'),
                              onPressed: () {
                                favoriteController.deleteAll();
                                Navigator.of(context).pop('Confirm');
                                Navigator.popAndPushNamed(context, '/favorite');
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 15)
                ],
              )
            : _buildHeartButtonICon(),
      ];

  Widget _buildHeartButtonICon() {
    return Container(
      child: Row(
        children: [
          Builder(builder: (context) {
            return Container(
              width: 20,
              height: 20,
              child: IconButton(
                onPressed: () {
                  Get.to(() => NewsFavoritesPage(
                        favoritesList: favoritesList,
                      ));
                },
                padding: EdgeInsets.zero,
                icon: Icon(
                  (article?.likes == null) || (article?.likes == false)
                      ? CupertinoIcons.heart
                      : CupertinoIcons.heart_fill,
                  color: Colors.lightBlue,
                ),
              ),
            );
          }),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
