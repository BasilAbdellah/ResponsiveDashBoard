import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/UserInfoModel.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/widgets/UserInfoListTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail.com")
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map(
                (e) =>
                    IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
              )
              .toList()),
    );

    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //     return IntrinsicWidth(
    //       child: UserInfoListTile(
    //         userInfoModel: items[index],
    //       ),
    //     );
    //   },),
    // );
  }
}
