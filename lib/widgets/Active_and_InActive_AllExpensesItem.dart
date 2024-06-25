import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/AllExpensesItemModel.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/AllExpensesItemHeader.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.ItemModel,
  });

  final AllExpensesItemModel ItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: ItemModel.image),
          const SizedBox(
            height: 34,
          ),
          Text(
            ItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            ItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            ItemModel.balance,
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.ItemModel,
  });

  final AllExpensesItemModel ItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xff4DB7F2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: ItemModel.image,
            imageBackGroundColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            ItemModel.title,
            style:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            ItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            ItemModel.balance,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
