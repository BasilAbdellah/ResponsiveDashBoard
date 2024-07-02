import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpenses_and_QuickInvoice.dart';
import 'package:responsive_dash_board/widgets/CustomDrawer.dart';
import 'package:responsive_dash_board/widgets/IncomeSection.dart';
import 'package:responsive_dash_board/widgets/MyCardsSection.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpenses_and_QuickInvoice(),
                      )),
                  SizedBox(width: 24,),
                  Expanded(child: Column(
                    children: [
                      MyCardsSection(),
                      SizedBox(height: 24,),
                      IncomeSection(),
                    ],
                  ))

                ],),
              )
            ],

          ),
        )
      ],
    );
  }
}

