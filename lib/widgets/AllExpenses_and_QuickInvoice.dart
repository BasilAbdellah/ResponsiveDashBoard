import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AllExpenses.dart';
import 'package:responsive_dash_board/widgets/QuickInvoice.dart';

class AllExpenses_and_QuickInvoice extends StatelessWidget {
  const AllExpenses_and_QuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40,),
        AllExpenses(),
        SizedBox(height: 24,),
        QuickInvoice()
      ],
    );
  }
}
