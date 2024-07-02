import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/IncomeDetailsModel.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeModel});
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration:  ShapeDecoration(color: incomeModel.color ,shape: const OvalBorder()),
      ),
      title: Text(incomeModel.title,style: AppStyles.styleRegular16(context),),
      trailing: Text(incomeModel.value,style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xff208CC8)),),

    );
  }
}
