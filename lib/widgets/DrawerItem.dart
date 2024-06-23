import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawerItemModel.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
   DrawerItem({super.key, required this.DrawerItemModel,required this.isActive});
  final drawerItemModel DrawerItemModel;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive? ActiveDrawerItem(DrawerItemModel: DrawerItemModel) :
     InActiveDrawerItem(DrawerItemModel: DrawerItemModel);
  }
}
