import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/CustomBackGroundContainer.dart';
import 'package:responsive_dash_board/widgets/CustomTextField.dart';
import 'package:responsive_dash_board/widgets/LatestTransactions.dart';
import 'package:responsive_dash_board/widgets/QuickInvoiceForm.dart';
import 'package:responsive_dash_board/widgets/QuickInvoiceHeader.dart';
import 'package:responsive_dash_board/widgets/TitleTextField.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            LatestTransactions(),
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
            QuickInvoiceForm(),
          ],
        ));
  }
}
