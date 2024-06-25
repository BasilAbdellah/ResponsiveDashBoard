import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/UserInfoModel.dart';
import 'package:responsive_dash_board/models/drawerItemModel.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/widgets/DrawerItemsListView.dart';
import 'package:responsive_dash_board/widgets/UserInfoListTile.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfoModel: const UserInfoModel(
                  title: "Lekan Okeowo",
                  image: Assets.imagesAvatar3,
                  subTitle: "demo@gmail.com")),
            ),
            const SliverToBoxAdapter(
              child:  SizedBox(
                height: 8,
              ),
            ),
            const DrawerItemsListView(),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 20,)),
                   InActiveDrawerItem(
                      DrawerItemModel: drawerItemModel(
                          title: "Setting System",
                          image: Assets.imagesSettings)),
                   InActiveDrawerItem(
                      DrawerItemModel: drawerItemModel(
                          title: "Logout account",
                          image: Assets.imagesLogout)),
                   SizedBox(
                    height: 48,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
