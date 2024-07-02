import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/TransactionHistoryModel.dart';
import 'package:responsive_dash_board/widgets/TransactionItem.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const Items = [
    TransactionHistoryModel(Title: "Cash Withdrawal", date: "13 Apr, 2022 ", amount: r"$20,129", isWithdrawal: true),
    TransactionHistoryModel(Title: "Landing Page project", date: "13 Apr, 2022 at 3:30 PM", amount: r"$2000", isWithdrawal: false),
    TransactionHistoryModel(Title: "Juni Mobile App project", date: "13 Apr, 2022 at 3:30 PM", amount: r"$20,129", isWithdrawal: false),

  ];
  @override
  Widget build(BuildContext context) {
     return Column(
       children: Items.map((e) => TransactionItem(TransModel: e,),).toList(),
     );
    // ListView.builder(
    //   shrinkWrap: true,
    // itemCount: Items.length
    // ,itemBuilder: (context, index) {
    //      return TransactionItem(TransModel: Items[index]);
    // },);
  }
}
