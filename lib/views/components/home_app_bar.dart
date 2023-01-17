import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends AppBar implements PreferredSizeWidget {
  HomeAppBar({super.key, required this.context, this.appBarTitle});
  final BuildContext context;

  final String? appBarTitle;

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
              "News",
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
        Container(
          child: Row(
            children: [
              Builder(builder: (context) {
                return Container(
                  width: 20,
                  height: 20,
                  child: IconButton(
                    onPressed: () {
                      print("클릭 됨");
                    },
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      CupertinoIcons.heart,
                      color: Colors.lightBlue,
                    ),
                  ),
                );
              }),
              SizedBox(width: 20),
            ],
          ),
        ),
      ];
}
