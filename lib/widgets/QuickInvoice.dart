import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/CustomBackGroundContainer.dart';
import 'package:responsive_dash_board/widgets/LatestTransactions.dart';
import 'package:responsive_dash_board/widgets/QuickInvoiceHeader.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(child: Column(
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 14,),
        LatestTransactions()
      ],
    ));
  }
}

