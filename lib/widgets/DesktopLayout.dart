import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpenses.dart';
import 'package:responsive_dash_board/widgets/CustomDrawer.dart';
import 'package:responsive_dash_board/widgets/QuickInvoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
            flex: 2,
            child: Column(
          children: [
            SizedBox(height: 40,),
            AllExpenses(),
            SizedBox(height: 24,),
            QuickInvoice()
          ],
        ))
      ],
    );
  }
}
