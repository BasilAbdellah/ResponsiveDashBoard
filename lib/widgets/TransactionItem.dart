import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/TransactionHistoryModel.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.TransModel});

  final TransactionHistoryModel TransModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          TransModel.Title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          TransModel.date,
          style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          TransModel.amount,
          style: AppStyles.styleSemiBold16(context).copyWith(
              color: TransModel.isWithdrawal
                  ?const  Color(0xFFF3735E)
                  :const Color(0xFF7DD97B)),
        ),
      ),
    );
  }
}
