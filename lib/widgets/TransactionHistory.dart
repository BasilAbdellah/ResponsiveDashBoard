import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/TransactionHistoryListView.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transaction History",
            style: AppStyles.styleSemiBold20(context),
          ),
          Text(
            "See all",
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xff4EB7F2)),
          )
        ],
      ),
    );
  }
}
