import 'package:flutter/material.dart';
import 'package:sspu_question/core/core.dart';
import 'package:sspu_question/src/home/widget/banner_image.dart';
import 'package:sspu_question/src/home/widget/branch_list_item.dart';
import 'package:sspu_question/src/widget/app_heading.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            AppHeading(
              text: "Your",
              subText: Constants.appName,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            BannerImage(
              imageUrl: Constants.bannerImage,
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return BranchListItem(
                  imageUrl: Constants.images[index],
                  cardColor: Constants.colors[index],
                  title: Constants.branch[index],
                  onTab: () {
                    Navigator.pushNamed(context, ScreenName.semsterScreen);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
