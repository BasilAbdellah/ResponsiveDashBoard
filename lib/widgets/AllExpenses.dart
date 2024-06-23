import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpensesHeader.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )

      ),
      child: const Column(
        children: [
          AllExpensesHeader()
        ],
      ),
    );
  }
}