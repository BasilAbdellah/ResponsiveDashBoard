import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/AllExpensesItemModel.dart';
import 'package:responsive_dash_board/widgets/Active_and_InActive_AllExpensesItem.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.ItemModel, required this.isSelected});
  final AllExpensesItemModel ItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(ItemModel: ItemModel)
        : InActiveAllExpensesItem(ItemModel: ItemModel);
  }
}
