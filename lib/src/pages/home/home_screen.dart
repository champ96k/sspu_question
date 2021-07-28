import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../core/utils/commen_extensions.dart';
import '../../widget/app_heading.dart';
import '../error/error_screen.dart';
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
      body: BlocBuilder<FetchFirebaseDataCubit, FetchFirebaseDataState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const LoadingScreen();
          }
          if (state is LoadedState) {
            return ListView(
              children: [
                const AppHeading(text: "Your", subText: "Bookshelf"),
                SizedBox(height: size.height * 0.01),
                state.model.showBanners
                    ? BannerImage(bannerInfo: state.model.bannerInfo)
                    : Container(),
                ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.model.branches?.length,
                  itemBuilder: (context, index) {
                    final model = state.model.branches?[index];
                    return BranchListItem(
                      imageUrl: "${model?.branchThumbnail}",
                      cardColor: colorConvert("${model!.backgroundColor}"),
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
          } else if (state is ErrorState) {
            return const Center(child: ErrorScreen());
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
