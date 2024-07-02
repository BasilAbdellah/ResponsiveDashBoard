import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpenses_and_QuickInvoice.dart';
import 'package:responsive_dash_board/widgets/CustomDrawer.dart';
import 'package:responsive_dash_board/widgets/IncomeSection.dart';
import 'package:responsive_dash_board/widgets/MobileLayout.dart';
import 'package:responsive_dash_board/widgets/MyCardsSection.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(flex: 3,child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: MobileLayout(),
        ))
      ],
    );
  }
}

