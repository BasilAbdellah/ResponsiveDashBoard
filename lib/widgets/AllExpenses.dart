import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpensesHeader.dart';
import 'package:responsive_dash_board/widgets/AllExpensesItemListView.dart';
import 'package:responsive_dash_board/widgets/CustomBackGroundContainer.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 20,
      child:  Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}

