import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/AllExpensesItemModel.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/widgets/AllExpensesItem.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        balance: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        balance: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        balance: r"$20,129"),
  ];

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemListView.items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  updateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensesItem(
                    ItemModel: item,
                    isSelected: SelectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  updateIndex(index);
                },
                child: AllExpensesItem(
              ItemModel: item,
              isSelected: SelectedIndex == index,
            ),
              ),
            );
          }
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      SelectedIndex = index;
    });
  }
}
