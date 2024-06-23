import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawerItemModel.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/widgets/DrawerItem.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int ActiveIndex = 0;
  final List<drawerItemModel> items = [
    drawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    drawerItemModel(image: Assets.imagesMyTransctions, title: "My Transction"),
    drawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    drawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    drawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if(ActiveIndex!=index){
              setState(() {
                ActiveIndex = index;
              });
            }
          },
          child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: DrawerItem(
                DrawerItemModel: items[index],
                isActive: ActiveIndex == index,
              )),
        );
      },
    );
  }
}
