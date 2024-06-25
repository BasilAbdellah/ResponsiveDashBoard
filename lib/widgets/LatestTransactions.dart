import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/LatestTransactionListView.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
       const SizedBox(height: 12,),
       const LatestTransactionListView()
      ],
    );
  }
}
