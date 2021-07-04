import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../widget/app_heading.dart';
import '../loading/loading_screen.dart';
import 'widget/banner_image.dart';
import 'widget/branch_list_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<FetchFirebaseDataCubit, FetchFirebaseDataState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const LoadingScreen();
            }
            if (state is LoadedState) {
              return ListView(
                children: [
                  const AppHeading(text: "Your", subText: "Bookshelf"),
                  SizedBox(height: size.height * 0.02),
                  BannerImage(bannerInfo: state.models[0].bannerInfo),
                  ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.models[0].branches!.length,
                    itemBuilder: (context, index) {
                      final model = state.models[0].branches![index];
                      return BranchListItem(
                        imageUrl: "${model!.branchThumbnail}",
                        cardColor: ConstantsColor.colors[index],
                        title: "${model.branchName}",
                        onTab: () {
                          Navigator.pushNamed(
                            context,
                            ScreenName.semsterScreen,
                            arguments: {
                              "branch": model,
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
