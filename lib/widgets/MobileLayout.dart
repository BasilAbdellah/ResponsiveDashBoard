import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpenses_and_QuickInvoice.dart';
import 'package:responsive_dash_board/widgets/IncomeSection.dart';
import 'package:responsive_dash_board/widgets/MyCardsSection.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses_and_QuickInvoice(),
          MyCardsSection(),
          SizedBox(height: 24,),
          IncomeSection(),

        ],
      ),
    );
  }
}
